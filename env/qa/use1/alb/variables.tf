variable "alb_name" {
  description = "Name of the Application Load Balancer"
  type        = string
}

variable "alb_security_groups" {
  description = "List of existing security group IDs to associate with the ALB"
  type        = list(string)
}

variable "subnet_ids" {
  description = "List of subnet IDs for the ALB"
  type        = list(string)
}

variable "vpc_id" {
  description = "VPC ID for the ALB and target group"
  type        = string
}

variable "target_instance_ids" {
  description = "List of EC2 instance IDs to register in target group"
  type        = list(string)
}
