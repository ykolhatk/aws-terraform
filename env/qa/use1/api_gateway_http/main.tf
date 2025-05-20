provider "aws" {
  region = var.region
}

module "api_gateway" {
  source             = "D:/Yogesh/DevOps/Terraform/repo/aws-terraform/modules/api_gateway_http"
  api_name           = var.api_name
  lambda_name        = var.lambda_name
  lambda_invoke_arn  = var.lambda_invoke_arn
}
