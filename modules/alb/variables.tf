variable "name" {}
variable "internal" {
  default = false
}
variable "security_groups" {
  type = list(string)
}
variable "subnet_ids" {
  type = list(string)
}
variable "deletion_protection" {
  type    = bool
  default = false
}

variable "vpc_id" {}
variable "target_port" {
  default = 80
}
variable "protocol" {
  default = "HTTP"
}
variable "target_type" {
  default = "instance"
}

variable "listener_port" {
  default = 80
}
variable "listener_protocol" {
  default = "HTTP"
}
variable "health_check_path" {
  default = "/"
}
variable "tags" {
  type    = map(string)
  default = {}
}

variable "target_ids" {
  description = "List of target instance IDs or IPs to register"
  type        = list(string)
  default     = []
}

