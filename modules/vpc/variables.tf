variable "vpc_cidr_block" {
  description = "CIDR block for the VPC"
  type        = string
  default     = "10.0.0.0/16"  
}

variable "public_subnet_cidr" {
  description = "CIDR block for the public subnet"
  type        = string
  default     = "10.0.1.0/24"  
}

variable "private_subnet_cidr" {
  description = "CIDR block for the private subnet"
  type        = string
  default     = "10.0.2.0/24"  
}

variable "public_subnet_az" {
  description = "Availability Zone for the public subnet"
  type        = string
  default     = "eu-west-1a"  
}

variable "instance_cidr" {
  description = "CIDR block for instances"
  type        = string
  default     = "192.168.100.55/32" 
}

variable "private_subnet_ingress_ports" {
  description = "Ingress ports for the private subnet"
  type        = list(number)
  default     = [1024, 65535]  
}

variable "private_subnet_egress_ports" {
  description = "Egress ports for the private subnet"
  type        = list(number)
  default     = [1024, 65535]  
}
