variable "broker_name" {
  type        = string
  description = "Name of the RabbitMQ broker"
}

variable "engine_version" {
  type        = string
  description = "RabbitMQ engine version"
  default     = "3.12.13"
}

variable "instance_type" {
  type        = string
  description = "RabbitMQ instance type"
  default     = "mq.t3.micro"
}

variable "deployment_mode" {
  type        = string
  description = "Deployment mode of the RabbitMQ broker"
  default     = "SINGLE_INSTANCE"
}

variable "subnet_ids" {
  type        = list(string)
  description = "List of subnet IDs for the RabbitMQ broker"
}

variable "vpc_id" {
  type        = string
  description = "VPC ID for the security group"
}

variable "username" {
  type        = string
  description = "Username for RabbitMQ authentication"
}

variable "password" {
  type        = string
  description = "Password for RabbitMQ authentication"
}

variable "allowed_cidr_blocks" {
  type        = list(string)
  description = "List of CIDR blocks allowed to access the RabbitMQ broker"
}

variable "tags" {
  type        = map(string)
  description = "Tags to apply to the RabbitMQ broker and related resources"
  default     = {}
}
