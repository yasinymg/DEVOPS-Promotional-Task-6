terraform {
  required_providers {
    aws = {
        source = "hashicorp/aws"
        version = "~>5.58.0"
    }
  }
}

provider "aws" {
  region = "eu-west-1"
}

module "vpc" {
  source   = "./modules/vpc"
  vpc_cidr_block = "10.0.0.0/16"
}

module "subnet" {
  source               = "./modules/subnet"
  vpc_id               = module.vpc.vpc_id
  public_subnet_cidr   = "10.0.1.0/24"
  private_subnet_cidr  = "10.0.2.0/24"
  public_subnet_az     = "eu-west-1a"
  private_subnet_az    = "eu-west-1a"
}

module "nat_gateway" {
  source                  = "./modules/nat_gateway"
  public_subnet_id        = module.subnet.public_subnet_id
  private_route_table_id  = module.route_table.private_route_table_id
}

module "security_group" {
  source             = "./modules/security_group"
  vpc_id             = module.vpc.vpc_id
  public_subnet_cidr = "10.0.1.0/24"
  my_ip              = "197.210.79.38" 
}

module "ec2" {
  source           = "./modules/ec2"
  ami              = "ami-0932dacac40965a65" 
  instance_type    = "t2.micro"
  public_subnet_id = module.subnet.public_subnet_id
  private_subnet_id = module.subnet.private_subnet_id
  public_sg_id      = module.security_group.public_sg_id
  private_sg_id     = module.security_group.private_sg_id
  key_name           = var.key_name

}


