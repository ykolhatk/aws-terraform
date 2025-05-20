variable "name" {
  type        = string
  description = "Name prefix for VPC resources"
}

variable "vpc_cidr" {
  type        = string
  description = "CIDR block for the VPC"
}

variable "public_subnet_cidrs" {
  type        = list(string)
  description = "CIDR blocks for public subnets"
}

variable "private_subnet_cidrs" {
  type        = list(string)
  description = "CIDR blocks for private subnets"
}

variable "azs" {
  type        = list(string)
  description = "Availability Zones"
}

variable "create_nat_gateway" {
  type        = bool
  description = "Whether to create a NAT Gateway"
}
