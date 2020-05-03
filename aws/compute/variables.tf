# Compute module

# Key-pair
variable "key_name" {}
variable "public_key_path" {}


# EC2
variable "subnet_ips" {
  type = list
}

variable "subnets" {
  type = list
}

variable "instance_count" {}
variable "instance_type" {}
variable "security_group" {}
