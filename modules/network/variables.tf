variable "project_name" {
  type        = string
  description = "Project name used for tagging"
}

variable "environment" {
  type        = string
  description = "Environment (dev, test, prod)"
}

variable "vpc_cidr_block" {
  type        = string
  description = "CIDR block for the VPC"
}

variable "public_subnet_cidr_block" {
  type        = string
  description = "CIDR block for the public subnet"
}
