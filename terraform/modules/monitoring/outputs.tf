output "log_group_name" {
  description = "CloudWatch log group name"
  value       = aws_cloudwatch_log_group.ecs.name
}

output "log_group_arn" {
  description = "CloudWatch log group ARN"
  value       = aws_cloudwatch_log_group.ecs.arn
}

output "cpu_alarm_name" {
  description = "ECS CPU CloudWatch alarm name"
  value       = aws_cloudwatch_metric_alarm.ecs_cpu_high.alarm_name
}

output "memory_alarm_name" {
  description = "ECS memory CloudWatch alarm name"
  value       = aws_cloudwatch_metric_alarm.ecs_memory_high.alarm_name
}
