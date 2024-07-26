variable "vpc_id" {
  description = "The VPC ID where the route tables will be created."
  type        = string
}

variable "internet_gateway_id" {
  description = "The ID of the Internet Gateway to be used with the public route table."
  type        = string
}

variable "public_subnet_id" {
  description = "The ID of the public subnet to associate with the public route table."
  type        = string
}

variable "public_route_table_routes" {
  description = "List of routes to be added to the public route table."
  type = list(object({
    cidr_block = string
    gateway_id = string
  }))
  default = [
    {
      cidr_block = "0.0.0.0/0"
      gateway_id = ""
    }
  ]
}

variable "private_route_table_tags" {
  description = "Tags to apply to the private route table."
  type        = map(string)
  default = {
    Name = "PrivateRouteTable"
  }
}
