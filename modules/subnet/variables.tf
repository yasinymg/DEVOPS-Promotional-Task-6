variable "vpc_id" {
  description = "ID of the KCVPC where the subnets will be created"
  type        = string
}

variable "public_subnet_cidr_block" {
  description = "CIDR block for the public subnet"
  type        = string
}

variable "private_subnet_cidr_block" {
  description = "CIDR block for the private subnet"
  type        = string
}

variable "availability_zone" {
  description = "Availability Zone for the subnets"
  type        = string
}

variable "public_subnet_name" {
  description = "Name for the public subnet"
  type        = string
}

variable "private_subnet_name" {
  description = "Name for the private subnet"
  type        = string
}
