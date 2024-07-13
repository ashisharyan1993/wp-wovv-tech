<<<<<<< HEAD
module "vpc" {
  source                    = "git::https://github.com/ashisharyan1993/terraform-module-network.git"
  vpc_prifix                = local.prefix
  vpc_cidr_block            = local.vpc_cidr_block
  public_subnet_cidr_block  = local.public_subnet_cidr_block
  private_subnet_cidr_block = local.private_subnet_cidr_block
  region                    = local.region
}

output "vpc_id" {
  value = module.vpc.vpc_id
}

output "vpc_subnet_public" {
  value = module.vpc.public_subnet_id
}

output "vpc_subnet_private" {
  value = module.vpc.private_subnet_id
=======
module "vpc" {
  source                    = "git::https://github.com/ashisharyan1993/terraform-module-network.git"
  vpc_prifix                = local.prefix
  vpc_cidr_block            = local.vpc_cidr_block
  public_subnet_cidr_block  = local.public_subnet_cidr_block
  private_subnet_cidr_block = local.private_subnet_cidr_block
  region                    = local.region
}

output "vpc_id" {
  value = module.vpc.vpc_id
}

output "vpc_subnet_public" {
  value = module.vpc.public_subnet_id
}

output "vpc_subnet_private" {
  value = module.vpc.private_subnet_id
>>>>>>> d0dbbf2adc2dab0f4a0b5e3ff9278a7fc4d98edd
}