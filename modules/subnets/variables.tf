variable "vpc_id" {
  description = "The VPC ID where the subnets will be created."
  type        = string
}

variable "public_subnet_cidr" {
  description = "The CIDR block for the public subnet."
  type        = string
  default     = "10.0.1.0/24"
}

variable "private_subnet_cidr" {
  description = "The CIDR block for the private subnet."
  type        = string
  default     = "10.0.2.0/24"
}

variable "availability_zone" {
  description = "The availability zone where the subnets will be created."
  type        = string
  default     = "eu-west-1a"
}
