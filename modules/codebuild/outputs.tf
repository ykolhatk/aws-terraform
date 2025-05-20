output "project_name" {
  value = aws_codebuild_project.this.name
}

output "github_connection_arn" {
  value = aws_codestarconnections_connection.github.arn
}