provider "aws" {
  region = var.region
}

module "rds" {
  source                  = "D:/Yogesh/DevOps/Terraform/repo/aws-terraform/modules/rds"
  name                    = var.rds_name
  username                = var.rds_username
  password                = var.rds_password
  subnet_ids              = var.rds_subnet_ids
  vpc_security_group_ids  = var.rds_sg_ids
  publicly_accessible     = var.rds_public
  tags                    = var.tags
}