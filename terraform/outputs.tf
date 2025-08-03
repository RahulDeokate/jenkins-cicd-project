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

output "cluster_name" {
  description = "name of the cluster"
  value = aws_eks_cluster.cluster.name
}

output "cluster_endpoint" {
  description = "cluster end point"
  value = aws_eks_cluster.cluster.endpoint
}

output "cluster_ca_certificate" {
  description = "cluster certificate"
  value = aws_eks_cluster.cluster.certificate_authority[0].data
}