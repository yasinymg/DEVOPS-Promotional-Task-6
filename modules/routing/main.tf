resource "aws_route_table" "PublicRouteTable" {
  vpc_id = var.vpc_id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = var.internet_gateway_id
  }

  tags = {
    Name = var.public_route_table_name
  }
}

resource "aws_route_table_association" "PublicSubnetAssociation" {
  subnet_id      = var.public_subnet_id
  route_table_id = aws_route_table.PublicRouteTable.id
}

resource "aws_route_table" "PrivateRouteTable" {
  vpc_id = var.vpc_id

  tags = {
    Name = var.private_route_table_name
  }
}

resource "aws_route" "PrivateRouteToNAT" {
  route_table_id         = var.private_route_table_id
  destination_cidr_block = "0.0.0.0/0"
  nat_gateway_id         = var.nat_gateway_id
}
