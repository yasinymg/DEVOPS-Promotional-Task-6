output "nat_gateway_eip_allocation_id" {
  description = "Allocate id of the Elastic IP associated with NAT Gateway"
  value       = aws_eip.NATEIP.id
}
