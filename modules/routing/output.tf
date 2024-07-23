output "public_route_table_id" {
  description = "ID of the Public Route Table"
  value       = aws_route_table.PublicRouteTable.id
}

output "private_route_table_id" {
  description = "ID of the Private Route Table"
  value       = aws_route_table.PrivateRouteTable.id
}

output "public_subnet_association_id" {
  description = "ID of the association between public subnet and public route table"
  value       = aws_route_table_association.PublicSubnetAssociation.id
}

output "private_route_to_nat_id" {
  description = "ID of the route from private route table to NAT Gateway"
  value       = aws_route.PrivateRouteToNAT.id
}
