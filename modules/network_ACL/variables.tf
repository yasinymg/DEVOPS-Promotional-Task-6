variable "vpc_id" {
  description = "The VPC ID where the Network ACLs will be created."
  type        = string
}

variable "public_subnet_ingress_rules" {
  description = "List of ingress rules for the public subnet NACL."
  type = list(object({
    protocol   = string
    rule_no    = number
    action     = string
    cidr_block = string
    from_port  = number
    to_port    = number
  }))
  default = [
    {
      protocol   = "tcp"
      rule_no    = 100
      action     = "allow"
      cidr_block = "0.0.0.0/0"
      from_port  = 80
      to_port    = 80
    },
    {
      protocol   = "tcp"
      rule_no    = 110
      action     = "allow"
      cidr_block = "0.0.0.0/0"
      from_port  = 443
      to_port    = 443
    },
    {
      protocol   = "tcp"
      rule_no    = 120
      action     = "allow"
      cidr_block = "192.168.100.55/32"
      from_port  = 22
      to_port    = 22
    }
  ]
}

variable "private_subnet_ingress_rules" {
  description = "List of ingress rules for the private subnet NACL."
  type = list(object({
    protocol   = string
    rule_no    = number
    action     = string
    cidr_block = string
    from_port  = number
    to_port    = number
  }))
  default = [
    {
      protocol   = "-1"
      rule_no    = 100
      action     = "allow"
      cidr_block = "10.0.1.0/24"
      from_port  = 0
      to_port    = 0
    },
    {
      protocol   = "tcp"
      rule_no    = 110
      action     = "allow"
      cidr_block = "0.0.0.0/0"
      from_port  = 1024
      to_port    = 65535
    },
    {
      protocol   = "udp"
      rule_no    = 120
      action     = "allow"
      cidr_block = "0.0.0.0/0"
      from_port  = 1024
      to_port    = 65535
    }
  ]
}

variable "public_subnet_egress_rules" {
  description = "List of egress rules for the public subnet NACL."
  type = object({
    protocol   = string
    rule_no    = number
    action     = string
    cidr_block = string
    from_port  = number
    to_port    = number
  })
  default = {
    protocol   = "-1"
    rule_no    = 200
    action     = "allow"
    cidr_block = "0.0.0.0/0"
    from_port  = 0
    to_port    = 0
  }
}

variable "private_subnet_egress_rules" {
  description = "List of egress rules for the private subnet NACL."
  type = object({
    protocol   = string
    rule_no    = number
    action     = string
    cidr_block = string
    from_port  = number
    to_port    = number
  })
  default = {
    protocol   = "-1"
    rule_no    = 200
    action     = "allow"
    cidr_block = "0.0.0.0/0"
    from_port  = 0
    to_port    = 0
  }
}
