output "public_route_table_id" {
  description = "The ID of the public route table."
  value       = aws_route_table.PublicRouteTable.id
}

output "public_route_table_routes" {
  description = "The routes in the public route table."
  value       = aws_route_table.PublicRouteTable.route
}

output "public_route_table_association_id" {
  description = "The ID of the route table association for the public subnet."
  value       = aws_route_table_association.PublicSubnetAssociation.id
}

output "private_route_table_id" {
  description = "The ID of the private route table."
  value       = aws_route_table.PrivateRouteTable.id
}
