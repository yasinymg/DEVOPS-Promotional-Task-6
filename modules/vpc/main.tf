resource "aws_vpc" "KCVPC" {
  cidr_block = "10.0.0.0/16"
  tags = {
    Name = "KCVPC"
  }
}



#subnets
resource "aws_subnet" "PublicSubnet" {
  vpc_id     = aws_vpc.KCVPC.id
  cidr_block = "10.0.1.0/24"
  availability_zone = "eu-west-1a"
  tags = {
    Name = "PublicSubnet"
  }
}

resource "aws_subnet" "PrivateSubnet" {
  vpc_id     = aws_vpc.KCVPC.id
  cidr_block = "10.0.2.0/24"
  availability_zone = "eu-west-1a"
  tags = {
    Name = "PrivateSubnet"
  }
}

#route table
resource "aws_route_table" "PublicRouteTable" {
  vpc_id = aws_vpc.KCVPC.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.IGW.id
  }

  tags = {
    Name = "PublicRouteTable"
  }
}

resource "aws_route_table_association" "PublicSubnetAssociation" {
  subnet_id      = aws_subnet.PublicSubnet.id
  route_table_id = aws_route_table.PublicRouteTable.id
}

resource "aws_route_table" "PrivateRouteTable" {
  vpc_id = aws_vpc.KCVPC.id

  tags = {
    Name = "PrivateRouteTable"
  }
}

#internet gateways
resource "aws_internet_gateway" "IGW" {
  vpc_id = aws_vpc.KCVPC.id
}

#network access control list
resource "aws_network_acl" "PublicSubnetNACL" {
  vpc_id = aws_vpc.KCVPC.id

   ingress {
    protocol   = "tcp"
    rule_no    = 100
    action     = "allow"
    cidr_block = "0.0.0.0/0"
    from_port  = 80
    to_port    = 80
  }

  ingress {
    protocol   = "tcp"
    rule_no    = 110
    action     = "allow"
    cidr_block = "0.0.0.0/0"
    from_port  = 443
    to_port    = 443
  }

  ingress {
    protocol   = "tcp"
    rule_no    = 120
    action     = "allow"
    cidr_block = "192.168.100.55/32"
    from_port  = 22
    to_port    = 22
  }

  # Egress rules
  egress {
    protocol   = "-1"
    rule_no    = 200
    action     = "allow"
    cidr_block = "0.0.0.0/0"
    from_port  = 0
    to_port    = 0
  }
}

resource "aws_network_acl" "PrivateSubnetNACL" {
  vpc_id = aws_vpc.KCVPC.id

   ingress {
    protocol   = "-1"
    rule_no    = 100
    action     = "allow"
    cidr_block = "10.0.1.0/24"  
    from_port  = 0
    to_port    = 0
  }

  ingress {
    protocol   = "tcp"
    rule_no    = 110
    action     = "allow"
    cidr_block = "0.0.0.0/0"
    from_port  = 1024
    to_port    = 65535
  }

  ingress {
    protocol   = "udp"
    rule_no    = 120
    action     = "allow"
    cidr_block = "0.0.0.0/0"
    from_port  = 1024
    to_port    = 65535
  }

  # Egress rules
  egress {
    protocol   = "-1"
    rule_no    = 200
    action     = "allow"
    cidr_block = "0.0.0.0/0"
    from_port  = 0
    to_port    = 0
  }
}

#security groups
resource "aws_security_group" "PublicSecurityGroup" {
  name        = "PublicSecurityGroup"
  vpc_id      = aws_vpc.KCVPC.id

  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    from_port   = 443
    to_port     = 443
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["192.168.100.55/32"] 
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

resource "aws_security_group" "PrivateSecurityGroup" {
  name        = "PrivateSecurityGroup"
  vpc_id      = aws_vpc.KCVPC.id

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

#nat gateways
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
