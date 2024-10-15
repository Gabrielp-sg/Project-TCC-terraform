variable "region" {
  description = "AWS region"
  default     = "us-east-1"
}

variable "cluster_name" {
  description = "Name of the EKS cluster"
  default     = "my-eks-cluster"
}


variable "node_group_name" {
  description = "Name of the EKS node group"
  type        = string
  default     = "my-node-group"
}

variable "node_instance_type" {
  description = "EC2 instance type for the nodes"
  type        = string
  default     = "t2.micro"
}

variable "desired_capacity" {
  type    = number
  default = 2
}

variable "max_size" {
  type    = number
  default = 3
}

variable "min_size" {
  type    = number
  default = 1
}
variable "bucket_name" {
  default = null
}