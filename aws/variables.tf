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

# Compute
variable "key_name" {}
variable "public_key_path" {}
variable "server_instance_type" {}
variable "instance_count" {
  default = 1
}

