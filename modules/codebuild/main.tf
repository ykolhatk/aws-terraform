resource "aws_codestarconnections_connection" "github" {
  name          = "${var.name}-github-connection"
  provider_type = "GitHub"
}

resource "aws_codebuild_project" "this" {
  name         = var.name
  service_role = var.service_role_arn

  source {
    type            = "GITHUB"
    location        = "https://github.com/${var.github_repo}"
    buildspec       = var.buildspec
    git_clone_depth = 1
  }

  environment {
    compute_type    = "BUILD_GENERAL1_SMALL"
    image           = "aws/codebuild/standard:7.0"
    type            = "LINUX_CONTAINER"
    privileged_mode = true
  }

  artifacts {
    type = "NO_ARTIFACTS"
  }

  source_version = var.github_branch
}
