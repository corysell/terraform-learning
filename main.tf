provider "aws" {
  region = "us-east-2"
}

module "vpc" {
  source = "terraform-aws-modules/vpc/aws"

  name = "myapp-vpc"
  cidr = var.vpc_cidr_block

  azs             = [var.avail_zone]
  public_subnets  = [var.subnet_cidr_block]
  public_subnet_tags = { Name = "${var.env_prefix}-subnet-1" }

  tags = {
    Name = "${var.env_prefix}-vpc"
  }
}

module "myapp-webserver" {
  source              = "./modules/webserver"
  instance_type       = var.instance_type
  home_cidr           = var.home_cidr
  any_cidr            = var.any_cidr
  env_prefix          = var.env_prefix
  avail_zone          = var.avail_zone
  public_key_location = var.public_key_location
  vpc_id              = module.vpc.vpc_id
  subnet_id           = module.vpc.public_subnets[0]
  image_name          = var.image_name
}
