variable "aws_region" {
  description = "AWS region to deploy into"
  type        = string
  default     = "ap-southeast-2" # Sydney, good for you
}

variable "project_name" {
  description = "Name prefix for all resources"
  type        = string
  default     = "cloud-infra-starter"
}

variable "environment" {
  description = "Environment name (e.g. dev, test, prod)"
  type        = string
  default     = "dev"
}

variable "instance_type" {
  description = "EC2 instance type for the demo instance"
  type        = string
  default     = "t3.micro"
}

variable "allowed_ssh_cidrs" {
  description = "List of CIDR blocks allowed to access the instance via SSH"
  type        = list(string)
  default     = ["0.0.0.0/0"] # For demo only. In real life, lock this down!
}

variable "vpc_cidr_block" {
  description = "CIDR block for the VPC"
  type        = string
  default     = "10.0.0.0/16"
}

variable "public_subnet_cidr_block" {
  description = "CIDR block for the public subnet"
  type        = string
  default     = "10.0.1.0/24"
}
