output "vpc_id" {
  description = "vpc id"
  value = module.vpc.vpc_id
}

output "public_subnet_1" {
  description = "public subnet 1 "
  value = module.networking.public_subnet_1
}

output "public_subnet_2" {
  description = "public subnet 2 "
  value = module.networking.public_subnet_2
}