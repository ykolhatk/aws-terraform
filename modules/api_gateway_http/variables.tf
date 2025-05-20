variable "api_name" {
  description = "Name for the API Gateway"
  type        = string
}

variable "lambda_name" {
  description = "Lambda function name to attach permission for"
  type        = string
}

variable "lambda_invoke_arn" {
  description = "Lambda invoke ARN to integrate with API Gateway"
  type        = string
}
