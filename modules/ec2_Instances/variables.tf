variable "ami_id" {
  description = "The AMI ID to use for the instances"
  type        = string
  default     = "ami-0932dacac40965a65"
}

variable "instance_type" {
  description = "The type of instance to start"
  type        = string
  default     = "t2.micro"
}

variable "public_subnet_id" {
  description = "The ID of the public subnet"
  type        = string
}

variable "private_subnet_id" {
  description = "The ID of the private subnet"
  type        = string
}

variable "public_security_group_id" {
  description = "The ID of the public security group"
  type        = string
}

variable "private_security_group_id" {
  description = "The ID of the private security group"
  type        = string
}
