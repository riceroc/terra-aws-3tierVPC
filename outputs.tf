# VPC ID
output "vpc_id" {
    description = "ID of the VPC"
    value = module.vpc.vpc_id
}

# VPC CIDR blocks
output "vpc_cidr_block" {
    description = "CIDR block of the VPC"
    value = module.vpc.vpc_cidr_block
}

# VPC Private Subnets
output "private_subnets" {
    description = "List of Private Subnet IDs"
    value = module.vpc.private_subnets
}

output "public_subnets" {
    description = "List of Public Subnet IDs"
    value = module.vpc.public_subnets
}

output "database_subnets" {
    description = "List of Database Subnet IDs"
    value = module.vpc.database_subnets
}

output "nat_public_ips" {
    description = "List of public Elastic IPs created for NAT GW"
    value = module.vpc.nat_public_ips
}

output "azs" {
    description = "List of availability zones"
    value = module.vpc.azs
}