output "public_subnet_id" {
  description = "ID of the Public Subnet"
  value       = aws_subnet.PublicSubnet.id
}

output "private_subnet_id" {
  description = "ID of the Private Subnet"
  value       = aws_subnet.PrivateSubnet.id
}
