module "eks" {
  source             = "../modules/eks-cluster"
  cluster_name       = var.cluster_name
  vpc_id             = aws_vpc.this.id
  subnet_ids         = [aws_subnet.public_subnet_1.id, aws_subnet.public_subnet_2.id]
  node_group_name    = var.node_group_name
  node_instance_type = var.node_instance_type
  desired_capacity   = var.desired_capacity
  max_size           = var.max_size
  min_size           = var.min_size
}
