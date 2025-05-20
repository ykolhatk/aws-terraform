variable "name" {}
variable "github_repo" {}
variable "github_branch" { default = "main" }
variable "buildspec" { default = "buildspec.yml" }
variable "service_role_arn" {}