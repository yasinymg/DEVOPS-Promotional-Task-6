output "public_security_group_id" {
  description = "ID of the Public Security Group"
  value       = aws_security_group.PublicSecurityGroup.id
}

output "private_security_group_id" {
  description = "ID of the Private Security Group"
  value       = aws_security_group.PrivateSecurityGroup.id
}
