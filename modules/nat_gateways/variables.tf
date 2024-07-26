variable "public_subnet_id" {
  description = "The subnet ID for the public subnet where the NAT Gateway will be deployed"
  type        = string
}

variable "private_route_table_id" {
  description = "The route table ID for the private subnet"
  type        = string
}

variable "eip_domain" {
  description = "The domain for the Elastic IP"
  type        = string
  default     = "vpc"
}
