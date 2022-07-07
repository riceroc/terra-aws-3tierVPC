# EKS Cluster Input Variables

variable "cluster_name" {
    description = "Name of the EKS cluster"
    type = string
    default = "terra-eks-demo"
}