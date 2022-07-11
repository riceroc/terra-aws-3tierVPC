# EKS Cluster Input Variables

variable "cluster_name" {
    description = "Name of the EKS cluster"
    type = string
    default = "eks-demo"
}

variable "cluster_service_ipv4_cidr" {
    description = "IPv4 CIDR for the kubernetes cluster"
    type = string
    default = null
}

variable "cluster_version" {
    description = "k8s minor version to use for the EKS cluster"
    type = string
    default = null  
}

variable "cluster_endpoint_private_access" {
    type = bool
    default = false
}

variable "cluster_endpoint_public_access" {
    type = bool 
    default = true
}

variable "cluster_endpoint_public_access_cidrs" {
    description = "List of CIDR blocks which can access EKS public resources"
    type = list(string)
    default = [ "0.0.0.0/0" ]
}