variable "project_name" {
  type        = string
  description = "Project name used for tagging"
}

variable "environment" {
  type        = string
  description = "Environment (dev, test, prod)"
}

variable "subnet_id" {
  type        = string
  description = "Subnet ID where the instance will be placed"
}

variable "vpc_id" {
  type        = string
  description = "VPC ID for the security group"
}

variable "instance_type" {
  type        = string
  description = "EC2 instance type"
}

variable "allowed_ssh_cidrs" {
  type        = list(string)
  description = "List of CIDR blocks allowed for SSH access"
}
