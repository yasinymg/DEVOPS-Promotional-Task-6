resource "aws_security_group" "PublicSecurityGroup" {
  name        = var.public_security_group_name
  vpc_id      = var.vpc_id

  // Define ingress and egress rules as per variables
}

resource "aws_security_group" "PrivateSecurityGroup" {
  name        = var.private_security_group_name
  vpc_id      = var.vpc_id

  // Define ingress and egress rules as per variables
}
