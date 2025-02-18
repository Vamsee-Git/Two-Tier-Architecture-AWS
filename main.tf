provider "aws" {
  region = var.aws_region
}

# VPC Module
module "vpc" {
  source = "./modules/vpc"
}

# Subnets Module
module "subnet" {
  source = "./modules/subnet"
  vpc_id = module.vpc.vpc_id
}

# EC2 Module (Web Servers)
module "web_servers" {
  source            = "./modules/ec2"
  subnet_ids        = module.subnet.public_subnet_ids
  ami_id            = var.ami_id
  instance_type     = var.web_instance_type
  security_group_id = module.security_groups.web_sg_id
}

# RDS Module (Database)
module "rds" {
  source            = "./modules/rds"
  subnet_ids        = module.subnet.private_subnet_ids
  db_instance_class = var.db_instance_class
  db_name           = var.db_name
  db_username       = var.db_username
  db_password       = var.db_password
  security_group_id = module.security_groups.db_sg_id
}

# Security Group Module
module "security_groups" {
  source = "./modules/security_groups"
}
