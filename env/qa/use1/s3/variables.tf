variable "region" {
  type = string
}

variable "bucket_name" {
  type = string
}

variable "versioning_enabled" {
  type    = bool
  default = false
}

variable "attach_policy" {
  type    = bool
  default = false
}

variable "bucket_policy_json" {
  type    = string
  default = ""
}

variable "lifecycle_rules" {
  type = list(object({
    id              = string
    prefix          = string
    enabled         = bool
    transition_days = number
    storage_class   = string
  }))
  default = []
}
