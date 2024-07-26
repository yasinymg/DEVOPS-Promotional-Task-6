output "public_security_group_id" {
  description = "The ID of the public security group."
  value       = aws_security_group.PublicSecurityGroup.id
}

output "private_security_group_id" {
  description = "The ID of the private security group."
  value       = aws_security_group.PrivateSecurityGroup.id
}

output "public_security_group_ingress_rules" {
  description = "The ingress rules of the public security group."
  value       = aws_security_group.PublicSecurityGroup.ingress
}

output "public_security_group_egress_rules" {
  description = "The egress rules of the public security group."
  value       = aws_security_group.PublicSecurityGroup.egress
}

output "private_security_group_egress_rules" {
  description = "The egress rules of the private security group."
  value       = aws_security_group.PrivateSecurityGroup.egress
}
