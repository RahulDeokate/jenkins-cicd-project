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

module "eks" {
  source = "./modules/eks"
  cluster_name = var.cluster_name
  subnet_1 = module.networking.public_subnet_1
  subnet_2 = module.networking.public_subnet_2
}