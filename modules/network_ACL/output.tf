output "public_subnet_nacl_id" {
  description = "The ID of the public subnet Network ACL."
  value       = aws_network_acl.PublicSubnetNACL.id
}

output "private_subnet_nacl_id" {
  description = "The ID of the private subnet Network ACL."
  value       = aws_network_acl.PrivateSubnetNACL.id
}

output "public_subnet_nacl_ingress_rules" {
  description = "The ingress rules of the public subnet Network ACL."
  value       = aws_network_acl.PublicSubnetNACL.ingress
}

output "private_subnet_nacl_ingress_rules" {
  description = "The ingress rules of the private subnet Network ACL."
  value       = aws_network_acl.PrivateSubnetNACL.ingress
}

output "public_subnet_nacl_egress_rules" {
  description = "The egress rules of the public subnet Network ACL."
  value       = aws_network_acl.PublicSubnetNACL.egress
}

output "private_subnet_nacl_egress_rules" {
  description = "The egress rules of the private subnet Network ACL."
  value       = aws_network_acl.PrivateSubnetNACL.egress
}
