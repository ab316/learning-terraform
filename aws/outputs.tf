# Root module 

# Storage
output "BucketName" {
  value = module.storage.bucketname
}


# Networking
output "PublicSubnets" {
  value = join(", ", module.networking.public_subnets)
}

output "SubenetIPs" {
  value = join(", ", module.networking.subnet_ips)
}

output "PublicSecurityGroup" {
  value = module.networking.public_sg
}


# Compute
output "PublicInstanceIDs" {
  value = module.compute.server_id
}

output "PublicInstanceIPs" {
  value = module.compute.server_ip
}

