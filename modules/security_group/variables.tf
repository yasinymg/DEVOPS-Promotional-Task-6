variable "vpc_id" {
  description = "ID of the VPC where the security groups will be created"
  type        = string
}

variable "public_security_group_name" {
  description = "Name for the public security group"
  type        = string
}

variable "private_security_group_name" {
  description = "Name for the private security group"
  type        = string
}


variable "public_security_group_ingress_rules" {
  description = "ingress rules for the public security group"
  type        = list(object({
    protocol   = string
    from_port  = number
    to_port    = number
    cidr_blocks = list(string)
  }))
  default = []
}

variable "public_security_group_egress_rules" {
  description = "egress rules for the public security group"
  type        = list(object({
    protocol   = string
    from_port  = number
    to_port    = number
    cidr_blocks = list(string)
  }))
  default = []
}

variable "private_security_group_ingress_rules" {
  description = "ingress rules for the private security group"
  type        = list(object({
    protocol   = string
    from_port  = number
    to_port    = number
    cidr_blocks = list(string)
  }))
  default = []
}

variable "private_security_group_egress_rules" {
  description = "egress rules for the private security group"
  type        = list(object({
    protocol   = string
    from_port  = number
    to_port    = number
    cidr_blocks = list(string)
  }))
  default = []
}
