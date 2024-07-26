resource "aws_network_acl" "PublicSubnetNACL" {
  vpc_id = var.vpc_id

  dynamic "ingress" {
    for_each = var.public_subnet_ingress_rules
    content {
      protocol   = ingress.value.protocol
      rule_no    = ingress.value.rule_no
      action     = ingress.value.action
      cidr_block = ingress.value.cidr_block
      from_port  = ingress.value.from_port
      to_port    = ingress.value.to_port
    }
  }

  egress {
    protocol   = var.public_subnet_egress_rules.protocol
    rule_no    = var.public_subnet_egress_rules.rule_no
    action     = var.public_subnet_egress_rules.action
    cidr_block = var.public_subnet_egress_rules.cidr_block
    from_port  = var.public_subnet_egress_rules.from_port
    to_port    = var.public_subnet_egress_rules.to_port
  }
}

resource "aws_network_acl" "PrivateSubnetNACL" {
  vpc_id = var.vpc_id

  dynamic "ingress" {
    for_each = var.private_subnet_ingress_rules
    content {
      protocol   = ingress.value.protocol
      rule_no    = ingress.value.rule_no
      action     = ingress.value.action
      cidr_block = ingress.value.cidr_block
      from_port  = ingress.value.from_port
      to_port    = ingress.value.to_port
    }
  }

  egress {
    protocol   = var.private_subnet_egress_rules.protocol
    rule_no    = var.private_subnet_egress_rules.rule_no
    action     = var.private_subnet_egress_rules.action
    cidr_block = var.private_subnet_egress_rules.cidr_block
    from_port  = var.private_subnet_egress_rules.from_port
    to_port    = var.private_subnet_egress_rules.to_port
  }
}
