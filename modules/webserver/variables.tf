variable "instance_type" {
  description = "EC2 instance type being specified for creation"
  type        = string
}

variable "home_cidr" {
  description = "home cidr block for security group rules"
  type        = string
}

variable "any_cidr" {
  description = "any cidr block, 0.0.0/0"
  type        = string
}

variable "env_prefix" {
  description = "environment prefix for myapp, eg. dev, prod, etc."
  type        = string
}

variable "avail_zone" {
  description = "availability zone for myapp deployment"
  type        = string
}

variable "vpc_id" {
  description = "vpc id for myapp deployment"
  type        = string
}

variable "image_name" {
  description = "AMI image file for EC2 instance creation"
  type        = string
}

variable "subnet_id" {
  description = "subnet id created for myapp deployment"
  type        = string
}

variable "public_key" {
  description = "public rsa_id key for SSH connectivity"
  type        = string
}