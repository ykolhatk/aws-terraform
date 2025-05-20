region            = "us-east-1"
bucket_name       = "my-test-lpb"
versioning_enabled = true
attach_policy     = true

lifecycle_rules = [
  {
    id              = "logs-to-glacier"
    prefix          = "logs/"
    enabled         = true
    transition_days = 30
    storage_class   = "GLACIER"
  }
]
