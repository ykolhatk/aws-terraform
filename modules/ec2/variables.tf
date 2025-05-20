variable "instance_type" {
  description = "EC2 instance type"
  type        = string
}

variable "subnet_id" {
  description = "Subnet ID to launch the instance in"
  type        = string
}

variable "security_group_ids" {
  description = "List of security group IDs"
  type        = list(string)
}

variable "key_name" {
  description = "SSH key pair name"
  type        = string
}

variable "tags" {
  description = "Tags to assign to the instance"
  type        = map(string)
}

variable "iam_instance_profile"{
  description ="IAM Role to be attached"
  type = string
}

variable "volume_size" {
  description = "Size of the root EBS volume in GiB"
  type        = number
}

variable "volume_type" {
  description = "Type of the root EBS volume (e.g., gp3, io1)"
  type        = string
}

variable "iops" {
  description = "Provisioned IOPS for the volume (only for gp3, io1, io2)"
  type        = number
}

variable "name" {
  type = string
  description = "EC2 Name tag value"
}

variable "region" {
  description = "AWS region to deploy resources"
  type        = string
}