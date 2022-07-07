# EC2 Bastion Instance Type
variable "instance_type" {
    description = "EC2 Instance Type"
    type = string
    default = "t3.micro"
}

# EC2 Bastion Instance Key Pair
variable "instance_keypair" {
    description = "AWS EC2 Key pair needed with the EC2 instance"
    type = string
    default = "eks-terraform-key"
}