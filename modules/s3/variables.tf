variable "bucket_name" {
  description = "Name of the S3 bucket"
  type        = string
}

variable "versioning_enabled" {
  description = "Whether to enable versioning"
  type        = bool
}

variable "lifecycle_rules" {
  description = "List of lifecycle rules"
  type        = list(object({
    id      = string
    prefix  = string
    enabled = bool
    transition_days = number
    storage_class   = string
  }))
}

variable "attach_policy" {
  description = "Whether to attach a custom bucket policy"
  type        = bool
}

variable "bucket_policy_json" {
  description = "Bucket policy as JSON string"
  type        = string
}
