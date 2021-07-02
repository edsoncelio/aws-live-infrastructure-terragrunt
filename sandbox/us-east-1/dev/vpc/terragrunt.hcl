locals {
  environment_vars = read_terragrunt_config(find_in_parent_folders("environment.hcl"))
  env              = local.environment_vars.locals.environment

  vpc_name = "ecs-cluster-${local.env}"
  vpc_azs = ["us-west-1a", "us-west-1b", "us-west-1c"]
}

terraform {
  source = "git::https://github.com/terraform-aws-modules/terraform-aws-vpc.git?ref=v3.2.0"
}

include {
  path = find_in_parent_folders()
}

inputs = {

  name = local.vpc_name
  cidr = "10.0.0.0/16"

  azs             = local.vpc_azs
  private_subnets = ["10.0.1.0/24", "10.0.2.0/24", "10.0.3.0/24"]
  public_subnets  = ["10.0.101.0/24", "10.0.102.0/24", "10.0.103.0/24"]

  enable_nat_gateway = true
  enable_vpn_gateway = true

  tags = local.environment_vars.locals.tags
}