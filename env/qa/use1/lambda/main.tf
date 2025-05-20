provider "aws" {
  region = var.region
}


module "lambda_basic" {
  source = "D:/Yogesh/DevOps/Terraform/repo/aws-terraform/modules/lambda"

  function_name         = "my-basic-lambda"
  runtime               = "python3.9"
  handler               = "lambda_function.lambda_handler"
  filename              = "lambda.zip"
  memory_size           = 256
  timeout               = 10
  log_retention         = 7

  environment_variables = {
    ENV = "dev"
  }

  tags = {
    Project = "MyApp"
    Env     = "Dev"
  }
}

output "lambda_function_name" {
  value = module.lambda_basic.function_name
}

output "lambda_invoke_arn" {
  value = module.lambda_basic.invoke_arn
}

