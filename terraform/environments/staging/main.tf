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
