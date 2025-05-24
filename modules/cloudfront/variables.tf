variable "origin_domain_name" {
  description = "The domain name of the origin (e.g., S3 bucket endpoint)"
  type        = string
}

variable "origin_id" {
  description = "An identifier for the origin"
  type        = string
}

variable "origin_access_identity" {
  description = "CloudFront origin access identity"
  type        = string
  default     = ""
}

variable "viewer_protocol_policy" {
  description = "Policy to apply to viewer requests (https-only, redirect-to-https, allow-all)"
  type        = string
  default     = "redirect-to-https"
}

variable "default_root_object" {
  description = "Object that CloudFront returns when the viewer requests the root URL"
  type        = string
  default     = "index.html"
}

variable "comment" {
  description = "Comment for the distribution"
  type        = string
  default     = "Managed by Terraform"
}

variable "price_class" {
  description = "Price class for the distribution"
  type        = string
  default     = "PriceClass_100"
}

variable "forward_headers" {
  description = "List of headers to forward to the origin"
  type        = list(string)
  default     = []
}

variable "tags" {
  type    = map(string)
  default = {}
}
