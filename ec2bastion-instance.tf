module "ec2_public" {
  source  = "terraform-aws-modules/ec2-instance/aws"
  version = "4.0.0"
  # version = "~>4.0.0"

  name = "${local.name}-BastionHost"
  ami                    = data.aws_ami.amzlinux.id 
  instance_type          = var.instance_type
  key_name               = var.instance_keypair
  # monitoring             = true # enable for prod
  vpc_security_group_ids = [module.public_bastion_sg.security_group_id]
  subnet_id              = module.vpc.public_subnets[0]

  tags = local.common_tags
}