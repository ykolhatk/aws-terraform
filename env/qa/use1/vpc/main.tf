provider "aws" {
  region = "us-east-1"
}

module "vpc" {
  source = "D:/Yogesh/DevOps/Terraform/repo/aws-terraform/modules/vpc"  # Adjust path as needed

  name                 = var.name
  vpc_cidr             = var.vpc_cidr
  public_subnet_cidrs  = var.public_subnet_cidrs
  private_subnet_cidrs = var.private_subnet_cidrs
  azs                  = var.azs
  create_nat_gateway   = var.create_nat_gateway
}
