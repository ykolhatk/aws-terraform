output "api_endpoint" {
  description = "Invoke URL of the deployed API"
  value       = aws_apigatewayv2_api.this.api_endpoint
}
