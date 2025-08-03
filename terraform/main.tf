module "vpc" {
  source = "./modules/vpc"
  vpc_cidr = var.vpc_cidr
}

module "networking" {
  source = "./modules/networking"
  vpc_id = var.vpc_id
  cidr_subnet_1 = var.cidr_subnet_1
  cidr_subnet_2 = var.cidr_subnet_2
  availability_zone_1 = var.availability_zone_1
  availability_zone_2 = var.availability_zone_2
}