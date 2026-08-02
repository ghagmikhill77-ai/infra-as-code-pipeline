variable "project_name" {
  description = "Project name"
  type        = string
}

variable "environment" {
  description = "Deployment environment"
  type        = string
}

variable "log_retention_days" {
  description = "Number of days to retain CloudWatch logs"
  type        = number
  default     = 7
}

variable "ecs_cluster_name" {
  description = "ECS cluster name"
  type        = string
}

variable "ecs_service_name" {
  description = "ECS service name"
  type        = string
}

variable "cpu_alarm_threshold" {
  description = "CPU utilization alarm threshold"
  type        = number
  default     = 80
}

variable "memory_alarm_threshold" {
  description = "Memory utilization alarm threshold"
  type        = number
  default     = 80
}
