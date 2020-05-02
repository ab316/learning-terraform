# Root module

aws_region   = "us-east-1"

# Storage
project_name = "la-terraform"

# Networking
vpc_cidr     = "10.123.0.0/16"
public_cidrs = [
  "10.123.1.0/24",
  "10.123.2.0/24"
]
access_ip    = "0.0.0.0/0"
