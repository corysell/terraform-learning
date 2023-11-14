provider "aws" {
  region = "us-east-2"
}

resource "aws_vpc" "myapp-vpc" {
  cidr_block = var.vpc_cidr_block
  tags = {
    Name : "${var.env_prefix}-vpc"
  }
}

module "myapp-subnet" {
  source                 = "./modules/subnet"
  subnet_cidr_block      = var.subnet_cidr_block
  avail_zone             = var.avail_zone
  env_prefix             = var.env_prefix
  any_cidr               = var.any_cidr
  vpc_id                 = aws_vpc.myapp-vpc.id
  default_route_table_id = aws_vpc.myapp-vpc.default_route_table_id
}

module "myapp-webserver" {
  source              = "./modules/webserver"
  instance_type       = var.instance_type
  home_cidr           = var.home_cidr
  any_cidr            = var.any_cidr
  env_prefix          = var.env_prefix
  avail_zone          = var.avail_zone
  public_key_location = var.public_key_location
  vpc_id              = aws_vpc.myapp-vpc.id
  subnet_id           = module.myapp-subnet.subnet.id
  image_name          = var.image_name
}
