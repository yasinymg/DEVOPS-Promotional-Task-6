output "public_subnet_id" {
  description = "The ID of the public subnet."
  value       = aws_subnet.PublicSubnet.id
}

output "private_subnet_id" {
  description = "The ID of the private subnet."
  value       = aws_subnet.PrivateSubnet.id
}
