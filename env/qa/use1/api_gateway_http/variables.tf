variable "api_name" {
    type = string
    description = "Name of API Gateway"
  
}

variable "region" {
  description = "AWS region"
  type        = string
  default = "us-east-1"
}

variable "lambda_invoke_arn"{
    description = "Lambda invoke ARN"
    type=string
}

variable "lambda_name" {
  description = "Lambda name"
  type = string
}