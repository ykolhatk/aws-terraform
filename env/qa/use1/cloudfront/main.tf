provider "aws" {
  region = "us-east-1"
}

module "cloudfront" {
  source = "D:/Yogesh/DevOps/Terraform/repo/aws-terraform/modules/cloudfront"

  origin_domain_name      = "yog-use1-test.s3.amazonaws.com"
  origin_id               = "S3Origin"
  origin_access_identity  = ""  # Add if you're using OAI
  viewer_protocol_policy  = "redirect-to-https"
  forward_headers         = ["Origin", "Access-Control-Request-Method"]
  default_root_object     = "index.html"
  tags = {
    Environment = "dev"
    Project     = "terraform-cdn"
  }
}
