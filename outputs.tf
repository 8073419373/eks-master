output "cluster_name" {
  value = aws_eks_cluster.eksdemocluster.name
}

output "cluster_endpoint" {
  value = aws_eks_cluster.eksdemocluster.endpoint
}

output "cluster_ca_certificate" {
  value = aws_eks_cluster.eksdemocluster.certificate_authority[0].data
}