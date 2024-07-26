output "public_instance_id" {
  description = "The ID of the public instance"
  value       = aws_instance.PublicInstance.id
}

output "public_instance_public_ip" {
  description = "The public IP of the public instance"
  value       = aws_instance.PublicInstance.public_ip
}

output "private_instance_id" {
  description = "The ID of the private instance"
  value       = aws_instance.PrivateInstance.id
}

output "private_instance_private_ip" {
  description = "The private IP of the private instance"
  value       = aws_instance.PrivateInstance.private_ip
}
