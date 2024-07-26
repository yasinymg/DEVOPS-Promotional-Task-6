output "nat_gateway_id" {
  description = "The ID of the NAT Gateway"
  value       = aws_nat_gateway.NATGateway.id
}

output "nat_gateway_public_ip" {
  description = "The public IP address of the NAT Gateway"
  value       = aws_eip.NATEIP.public_ip
}

output "private_route_id" {
  description = "The ID of the route in the private route table"
  value       = aws_route.PrivateRouteToNAT.id
}
