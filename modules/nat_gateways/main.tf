resource "aws_nat_gateway" "NATGateway" {
  allocation_id = aws_eip.NATEIP.id
  subnet_id     = aws_subnet.PublicSubnet.id

  tags = {
    Name = "NATGateway"
  }
}

resource "aws_route" "PrivateRouteToNAT" {
  route_table_id         = aws_route_table.PrivateRouteTable.id
  destination_cidr_block = "0.0.0.0/0"
  nat_gateway_id         = aws_nat_gateway.NATGateway.id
}

resource "aws_eip" "NATEIP" {
  domain = "vpc"
}
