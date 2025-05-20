variable "function_name" {
  description = "The name of the Lambda function"
  type        = string
}

variable "runtime" {
  description = "The runtime environment for the Lambda function"
  type        = string
}

variable "handler" {
  description = "The function entrypoint in your code"
  type        = string
}

variable "filename" {
  description = "Path to the local zip file containing the Lambda function code"
  type        = string
}

variable "memory_size" {
  description = "Amount of memory in MB your Lambda function can use"
  type        = number
}

variable "timeout" {
  description = "The amount of time your Lambda function has to run (in seconds)"
  type        = number
}

variable "environment_variables" {
  description = "A map of environment variables to set for the Lambda function"
  type        = map(string)
}

variable "tags" {
  description = "A map of tags to assign to resources"
  type        = map(string)
}

variable "log_retention" {
  description = "Number of days to retain logs in CloudWatch"
  type        = number
}
