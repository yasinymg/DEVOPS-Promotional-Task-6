output "vpc_id" {
  description = "The ID of the created VPC"
  value       = aws_vpc.KCVPC.id
}

output "public_subnet_id" {
  description = "The ID of the public subnet"
  value       = aws_subnet.PublicSubnet.id
}

output "private_subnet_id" {
  description = "The ID of the private subnet"
  value       = aws_subnet.PrivateSubnet.id
}

output "public_route_table_id" {
  description = "The ID of the public route table"
  value       = aws_route_table.PublicRouteTable.id
}

output "private_route_table_id" {
  description = "The ID of the private route table"
  value       = aws_route_table.PrivateRouteTable.id
}

output "internet_gateway_id" {
  description = "The ID of the internet gateway"
  value       = aws_internet_gateway.IGW.id
}

output "public_subnet_network_acl_id" {
  description = "The ID of the network ACL associated with the public subnet"
  value       = aws_subnet.PublicSubnet.network_acl_id
}

output "private_subnet_network_acl_id" {
  description = "The ID of the network ACL associated with the private subnet"
  value       = aws_subnet.PrivateSubnet.network_acl_id
}

output "public_security_group_id" {
  description = "The ID of the public security group"
  value       = aws_security_group.PublicSecurityGroup.id
}

output "private_security_group_id" {
  description = "The ID of the private security group"
  value       = aws_security_group.PrivateSecurityGroup.id
}

output "nat_gateway_id" {
  description = "The ID of the NAT gateway"
  value       = aws_nat_gateway.NATGateway.id
}

output "nat_gateway_allocation_id" {
  description = "The allocation ID of the NAT gateway"
  value       = aws_nat_gateway.NATGateway.allocation_id
}

output "nat_gateway_private_ip" {
  description = "The private IP of the NAT gateway"
  value       = aws_nat_gateway.NATGateway.private_ip
}

output "nat_gateway_public_ip" {
  description = "The public IP of the NAT gateway"
  value       = aws_nat_gateway.NATGateway.public_ip
}

output "nat_eip_id" {
  description = "The ID of the Elastic IP (EIP) associated with the NAT gateway"
  value       = aws_eip.NATEIP.id
}

output "nat_eip_allocation_id" {
  description = "The allocation ID of the Elastic IP (EIP) associated with the NAT gateway"
  value       = aws_eip.NATEIP.allocation_id
}
