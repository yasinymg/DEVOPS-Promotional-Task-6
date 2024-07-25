variable "instance_type" {
  description = "The type of EC2 instance to launch"
  type        = string
  default     = "t2.micro"  
}

variable "vpc_cidr_block" {
  description = "The CIDR block for the VPC"
  type        = string
  default     = "10.0.0.0/16"  
}

variable "subnet_cidr_blocks" {
  description = "List of CIDR blocks for subnets"
  type        = list(string)
  default     = ["10.0.1.0/24", "10.0.2.0/24"]  
}


































# variable "vpc_cidr_block" {
#   description = "CIDR block for the VPC"
#   type        = string
#   default     = "10.0.0.0/16"
# }

# variable "public_subnet_cidr_block" {
#   description = "CIDR block for the public subnet"
#   type        = string
#   default     = "10.0.1.0/24"
# }

# variable "private_subnet_cidr_block" {
#   description = "CIDR block for the private subnet"
#   type        = string
#   default     = "10.0.2.0/24"
# }

# variable "ami_id" {
#   description = "AMI ID for the EC2 instances"
#   type        = string
#   default     = "ami-0932dacac40965a65"  
# }

# variable "instance_type" {
#   description = "Instance type for the EC2 instances"
#   type        = string
#   default     = "t2.micro"
# }

# variable "ssh_cidr_block" {
#   description = "CIDR block for SSH access"
#   type        = string
#   default     = "192.168.100.55/32" 
# }

# variable "postgresql_port" {
#   description = "Port number for PostgreSQL"
#   type        = number
#   default     = 5432  
# }
