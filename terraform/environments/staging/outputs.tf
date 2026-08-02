output "vpc_id" {
  value = module.networking.vpc_id
}

output "public_subnet_ids" {
  value = module.networking.public_subnet_ids
}

output "private_subnet_ids" {
  value = module.networking.private_subnet_ids
}
output "alb_security_group_id" {
  value = module.security.alb_security_group_id
}

output "ecs_security_group_id" {
  value = module.security.ecs_security_group_id
}
output "log_group_name" {
  value = module.monitoring.log_group_name
}

output "log_group_arn" {
  value = module.monitoring.log_group_arn
}

output "cpu_alarm_name" {
  value = module.monitoring.cpu_alarm_name
}

output "memory_alarm_name" {
  value = module.monitoring.memory_alarm_name
}
