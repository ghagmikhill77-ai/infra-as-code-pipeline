module "networking" {
  source = "../../modules/networking"

  project_name = "infra-as-code-pipeline"
  environment  = "staging"

  vpc_cidr = "10.0.0.0/16"

  availability_zones = [
    "ap-south-1a",
    "ap-south-1b"
  ]

  public_subnet_cidrs = [
    "10.0.1.0/24",
    "10.0.2.0/24"
  ]

  private_subnet_cidrs = [
    "10.0.11.0/24",
    "10.0.12.0/24"
  ]
}

module "security" {
  source = "../../modules/security"

  project_name = "infra-as-code-pipeline"
  environment  = "staging"

  vpc_id = module.networking.vpc_id

  container_port = 3000
}
module "monitoring" {
  source = "../../modules/monitoring"

  project_name = "infra-as-code-pipeline"
  environment  = "staging"

  ecs_cluster_name = "infra-as-code-pipeline-staging"
  ecs_service_name = "infra-as-code-pipeline-staging-service"

  log_retention_days = 7

  cpu_alarm_threshold    = 80
  memory_alarm_threshold = 80
}
module "compute" {
  source = "../../modules/compute"

  project_name = "infra-as-code-pipeline"
  environment  = "staging"
  aws_region   = var.aws_region

  vpc_id = module.networking.vpc_id

  public_subnet_ids = module.networking.public_subnet_ids

  private_subnet_ids = module.networking.private_subnet_ids

  alb_security_group_id = module.security.alb_security_group_id

  ecs_security_group_id = module.security.ecs_security_group_id

  container_name = "app"
  container_port = 3000

  task_cpu    = 256
  task_memory = 512

  desired_count = 2

  min_capacity = 2
  max_capacity = 6

  image_tag = "latest"

  log_group_name = module.monitoring.log_group_name

  depends_on = [
    module.monitoring
  ]
}
