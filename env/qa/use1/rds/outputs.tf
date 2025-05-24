output "rds_endpoint" {
  description = "The RDS instance endpoint"
  value       = module.rds.rds_endpoint
}

output "rds_arn" {
  description = "The RDS instance ARN"
  value       = module.rds.rds_arn
}
