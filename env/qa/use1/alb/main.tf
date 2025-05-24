provider "aws" {
  region = "us-east-1"
}

module "alb" {
  source            = "D:/Yogesh/DevOps/Terraform/repo/aws-terraform/modules/alb"
  name              = "my-alb"
  internal          = false
  security_groups   = var.alb_security_groups
  subnet_ids        = var.subnet_ids
  vpc_id            = var.vpc_id
  target_port       = 80
  health_check_path = "/"
  target_ids        = var.target_instance_ids
  tags = {
    Environment = "qa"
    Project     = "terraform-alb"
  }
}
