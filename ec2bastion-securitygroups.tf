# EC2 

module "public_bastion_sg" {
  source  = "terraform-aws-modules/security-group/aws"
  version = "4.9.0"
  # insert the 3 required variables here
  name        = "${local.name}-public-bastion-sg"
  description = "Security group for Bastion Host"
  vpc_id      = module.vpc.vpc_id
  
  # Ingress rules & CIDR blocks
  ingress_rules = ["ssh-tcp"]
  ingress_cidr_blocks = ["0.0.0.0/0"]

  # Egress Rules
  egress_rules = ["all-all"]
  tags = local.common_tags
}