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
output "ecr_repository_url" {
  value = module.compute.ecr_repository_url
}

output "ecr_repository_name" {
  value = module.compute.ecr_repository_name
}

output "ecs_cluster_name" {
  value = module.compute.ecs_cluster_name
}

output "ecs_service_name" {
  value = module.compute.ecs_service_name
}

output "load_balancer_dns_name" {
  value = module.compute.load_balancer_dns_name
}

output "target_group_arn" {
  value = module.compute.target_group_arn
}
