variable "ami_id" {
  description = "AMI ID for the EC2 instances"
  type        = string
  default     = "ami-0932dacac40965a65"  
}

variable "instance_type" {
  description = "Instance type for the EC2 instances"
  type        = string
  default     = "t2.micro" 
}

variable "public_subnet_id" {
  description = "Subnet ID for the public instance"
  type        = string
  
}

variable "private_subnet_id" {
  description = "Subnet ID for the private instance"
  type        = string
  
}

variable "public_security_group_id" {
  description = "Security Group ID for the public instance"
  type        = string
  
}

variable "private_security_group_id" {
  description = "Security Group ID for the private instance"
  type        = string
  
}
