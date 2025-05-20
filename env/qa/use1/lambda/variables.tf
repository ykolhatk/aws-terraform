variable "function_name" {
  description = "The name of the Lambda function"
  type        = string
}

variable "runtime" {
  description = "The runtime environment for the Lambda function"
  type        = string
  default     = "python3.9"
}

variable "handler" {
  description = "The function entrypoint in your code"
  type        = string
  default     = "lambda_function.lambda_handler"
}

variable "filename" {
  description = "Path to the local zip file containing the Lambda function code"
  type        = string
}

variable "memory_size" {
  description = "Amount of memory in MB your Lambda function can use"
  type        = number
  default     = 128
}

variable "timeout" {
  description = "The amount of time your Lambda function has to run (in seconds)"
  type        = number
  default     = 3
}

variable "environment_variables" {
  description = "A map of environment variables to set for the Lambda function"
  type        = map(string)
  default     = {}
}

variable "tags" {
  description = "A map of tags to assign to resources"
  type        = map(string)
  default     = {}
}

variable "log_retention" {
  description = "Number of days to retain logs in CloudWatch"
  type        = number
  default     = 14
}

variable "region" {
  description = "AWS region"
  type        = string
  default = "us-east-1"
}
