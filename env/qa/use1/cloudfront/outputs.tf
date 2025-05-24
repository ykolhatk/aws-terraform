output "distribution_id" {
  value = module.cloudfront.distribution_id
}

output "domain_name" {
  value = module.cloudfront.domain_name
}

output "cloudfront_oai_id" {
  value = module.cloudfront.oai_id
}

output "cloudfront_oai_iam_arn" {
  value = module.cloudfront.oai_iam_arn
}
