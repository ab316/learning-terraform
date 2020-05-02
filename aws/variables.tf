# Root module

variable "aws_region" {}

# Storage
variable "project_name" {}

# Networking
variable "vpc_cidr" {}
variable "public_cidrs" {
  type = list
}
variable "access_ip" {}
