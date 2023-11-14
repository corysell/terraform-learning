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

variable "any_cidr" {
  description = "any cidr block, 0.0.0/0"
  type        = string
}

variable "vpc_id" {
  description = "vpc id for myapp deployment"
  type        = string
}

variable "default_route_table_id" {
  description = "define to utilize the default route table created by the vpc creation for use"
  type        = string
}
