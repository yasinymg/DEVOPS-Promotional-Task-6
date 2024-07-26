resource "aws_vpc" "main" {
  cidr_block = "10.0.0.0/16"
  tags = {
    Name = "KCVPC"
  }
}

#internet gateways
resource "aws_internet_gateway" "IGW" {
  vpc_id = aws_vpc.KCVPC.id
}

