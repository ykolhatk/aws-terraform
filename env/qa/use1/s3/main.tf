provider "aws" {
  region = var.region
}

module "s3_bucket" {
  source = "D:/Yogesh/DevOps/Terraform/repo/aws-terraform/modules/s3"

  bucket_name        = var.bucket_name
  versioning_enabled = var.versioning_enabled
  attach_policy      = var.attach_policy
  bucket_policy_json = file("${path.module}/s3-policy.json")

  lifecycle_rules = var.lifecycle_rules
}
