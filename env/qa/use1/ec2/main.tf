provider "aws" {
  region  = var.region

}

module "ec2_instance" {
  source = "D:/Yogesh/DevOps/Terraform/repo/aws-terraform/modules/ec2"

  instance_type        = var.instance_type
  key_name             = var.key_name
  iam_instance_profile = var.iam_instance_profile
  subnet_id            = var.subnet_id
  security_group_ids   = var.security_group_ids
  region=var.region
  volume_size = var.volume_size
  volume_type = var.volume_type
  iops        = var.iops

  name = var.name
  tags = var.tags
}
