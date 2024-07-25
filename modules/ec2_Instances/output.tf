output "public_instance_id" {
  description = "ID of the public EC2 instance"
  value       = aws_instance.PublicInstance.id
}

output "private_instance_id" {
  description = "ID of the private EC2 instance"
  value       = aws_instance.PrivateInstance.id
}
