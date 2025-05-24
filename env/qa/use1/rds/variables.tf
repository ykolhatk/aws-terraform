variable "name" {
  description = "Identifier name for the Subnet group"
  type        = string
}

variable "rds_name" {
  description = "Identifier name for the RDS instance"
  type        = string
}

variable "rds_username" {
  description = "Master username for the RDS database"
  type        = string
}

variable "rds_password" {
  description = "Master password for the RDS database"
  type        = string
  sensitive   = true
}

variable "rds_subnet_ids" {
  description = "List of subnet IDs for the DB subnet group"
  type        = list(string)
}

variable "rds_sg_ids" {
  description = "List of security group IDs to associate with the RDS instance"
  type        = list(string)
}

variable "rds_public" {
  description = "Whether the RDS instance is publicly accessible"
  type        = bool
  default     = false
}

variable "tags" {
  description = "Tags to apply to all RDS resources"
  type        = map(string)
  default = {
    Environment = "dev"
    Project     = "terraform-rds"
  }
}

variable "region" {
  default = "us-east-1"
}
