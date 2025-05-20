provider "aws" {
  region = var.region
}

module "codebuild" {
  source             = "D:/Yogesh/DevOps/Terraform/repo/aws-terraform/modules/codebuild"
  name               = "test-codebuild"
  github_repo        = "${var.git_user}/${var.git_repo}"
  github_branch      = "main"
  buildspec          = "buildspec.yml"
  service_role_arn   = aws_iam_role.codebuild.arn
}

resource "aws_iam_role" "codebuild" {
  name = "codebuild-role"

  assume_role_policy = jsonencode({
    Version = "2012-10-17",
    Statement = [
      {
        Effect = "Allow",
        Principal = {
          Service = "codebuild.amazonaws.com"
        },
        Action = "sts:AssumeRole"
      }
    ]
  })
}

resource "aws_iam_role_policy_attachment" "codebuild_attach" {
  role       = aws_iam_role.codebuild.name
  policy_arn = "arn:aws:iam::aws:policy/AWSCodeBuildDeveloperAccess"
}
