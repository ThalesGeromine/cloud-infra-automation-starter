module "network" {
  source = "./modules/network"

  project_name             = var.project_name
  environment              = var.environment
  vpc_cidr_block           = var.vpc_cidr_block
  public_subnet_cidr_block = var.public_subnet_cidr_block
}

module "compute" {
  source = "./modules/compute"

  project_name      = var.project_name
  environment       = var.environment
  subnet_id         = module.network.public_subnet_id
  vpc_id            = module.network.vpc_id
  instance_type     = var.instance_type
  allowed_ssh_cidrs = var.allowed_ssh_cidrs
}
