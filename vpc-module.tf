#
data "aws_availability_zones" "available" {}

#Create VPC
module "vpc" {
  source  = "terraform-aws-modules/vpc/aws"
  version = "3.14.2"
  #version = "~> 3.14"

  # VPC Details
  name = "${local.name}-${var.vpc_name}"
  cidr = var.vpc_cidr_block
  azs = data.aws_availability_zones.available.names
  
  #azs                 = var.vpc_availability_zones
  private_subnets     = var.vpc_private_subnets
  public_subnets      = var.vpc_public_subnets

  # DB subnets
  database_subnets    = var.vpc_database_subnets
  create_database_subnet_group = var.vpc_create_database_subnet_group
  create_database_subnet_route_table = var.vpc_create_database_subnet_route_table

  # create_database_internet_gateway_route = true ## enable for acces to IGW
  # create_database_nat_gateway_route = true ## enable for NAT GW public subnet acces

  # NAT GW for outbound communication
  enable_nat_gateway = var.vpc_enable_nat_gateway
  single_nat_gateway = var.vpc_enable_single_nat_gateway # disable for production

  # VPC DNS Parameteres
  enable_dns_hostnames = true
  enable_dns_support = true
  
  # Tags
  tags = local.common_tags
  vpc_tags = local.common_tags

  public_subnet_tags = {
    Name = "Public subnets"
  }

  private_subnet_tags = {
    Name = "Private subnets"
  }

  database_subnet_tags = {
    Name = "Database subnets"
  }
}

