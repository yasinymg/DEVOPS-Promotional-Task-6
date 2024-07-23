variable "vpc_id" {
  description = "ID of the KCVPC where the route tables will be created"
  type        = string
}

variable "internet_gateway_id" {
  description = "ID of the Internet Gateway for the public route table"
  type        = string
}

variable "nat_gateway_id" {
  description = "ID of the NAT Gateway for the private route table"
  type        = string
}

variable "public_subnet_id" {
  description = "ID of the public subnet for association with the public route table"
  type        = string
}

variable "public_route_table_name" {
  description = "Name tag for the public route table"
  type        = string
}

variable "private_route_table_name" {
  description = "Name tag for the private route table"
  type        = string
}

variable "private_route_table_id" {
  description = "ID of the private route table for creating routes"
  type        = string
}
