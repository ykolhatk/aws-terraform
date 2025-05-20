resource "aws_s3_bucket" "this" {
  bucket = var.bucket_name  
}

resource "aws_s3_bucket_ownership_controls" "this" {
  bucket = aws_s3_bucket.this.id

  rule {
    object_ownership = "BucketOwnerEnforced"
  }
}


resource "aws_s3_bucket_versioning" "this" {
  bucket = aws_s3_bucket.this.id

  versioning_configuration {
    status = var.versioning_enabled ? "Enabled" : "Suspended"
  }
}

resource "aws_s3_bucket_lifecycle_configuration" "this" {
  count  = length(var.lifecycle_rules) > 0 ? 1 : 0
  bucket = aws_s3_bucket.this.id

    dynamic "rule" {
    for_each = var.lifecycle_rules
    content {
      id     = rule.value.id
      status = rule.value.enabled ? "Enabled" : "Disabled"

      filter {
        prefix = rule.value.prefix
      }

    transition {
      days          = 30
      storage_class = "GLACIER"
    }
  }
}
}
resource "aws_s3_bucket_policy" "this" {
  count  = var.attach_policy ? 1 : 0
  bucket = aws_s3_bucket.this.id
  policy = var.bucket_policy_json
}

output "bucket_arn" {
  value = aws_s3_bucket.this.arn
}
