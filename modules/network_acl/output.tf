output "public_subnet_network_acl_id" {
  description = "ID of the Public Subnet Network ACL"
  value       = aws_network_acl.PublicSubnetNACL.id
}

output "private_subnet_network_acl_id" {
  description = "ID of the Private Subnet Network ACL"
  value       = aws_network_acl.PrivateSubnetNACL.id
}
