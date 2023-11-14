variable "vpc_cidr_block" {
  description = "VPC supernet cidr block"
  type        = string
}
variable "subnet_cidr_block" {
  description = "subnet cidr block for myapp"
  type        = string
}
variable "avail_zone" {
  description = "availability zone for myapp deployment"
  type        = string
}
variable "env_prefix" {
  description = "environment prefix for myapp, eg. dev, prod, etc."
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
variable "instance_type" {
  description = "EC2 instance type being specified for creation"
  type        = string
}
variable "public_key_location" {
  description = "public rsa_id key location for SSH connectivity"
  type        = string
}
variable "image_name" {
  description = "AMI image file for EC2 instance creation"
  type        = string
}
