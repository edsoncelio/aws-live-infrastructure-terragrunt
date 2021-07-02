locals {
  environment_vars = read_terragrunt_config(find_in_parent_folders("environment.hcl"))
  env              = local.environment_vars.locals.environment

  cluster_name = "ecs-cluster-${local.env}"
}

terraform {
  source = "git::https://github.com/terraform-aws-modules/terraform-aws-ecs.git?ref=v3.3.0"
}

include {
  path = find_in_parent_folders()
}

inputs = {

  name               = local.cluster_name
  container_insights = true
  capacity_providers = ["FARGATE", "FARGATE_SPOT"]
  default_capacity_provider_strategy = [
    {
      capacity_provider = "FARGATE_SPOT"
    }
  ]

  tags = local.environment_vars.locals.tags
}