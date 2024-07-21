output "public_instance_ip" {
  description = "Public instance IP address"
  value       = aws_instance.PublicInstance.public_ip
}

output "private_instance_ip" {
  description = "Private instance IP address"
  value       = aws_instance.PrivateInstance.private_ip
}

output "nginx_installation_script" {
  description = "Script to install Nginx on the EC2 instance"
  value       = <<-EOT
    #!/bin/bash
    $(filebase64("nginx.sh"))
  EOT
}

output "postgresql_installation_script" {
  description = "Script to install PostgreSQL on the EC2 instance"
  value       = <<-EOT
    #!/bin/bash
    $(filebase64("postgresql.sh"))
  EOT
}
