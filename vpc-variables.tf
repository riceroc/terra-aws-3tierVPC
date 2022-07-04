# VPC name
variable "vpc_name" {
    description = "VPC Name"
    type = string
    default = "ricerocTerra"
}

# VPC CIDR Block
variable "vpc_cidr_block" {
    description = "VPC CIDR Block"
    type = string
    default = "10.0.0.0/16"
}

# VPC Availability Zones
variable "vpc_availability_zones" {
    description = "VPC Availability Zones"
    type = list(string)
    default = ["us-east-1a", "us-east-1b"]
}

# VPC Private Subnets
variable "vpc_private_subnets" {
    description = "VPC Private Subnets"
    type = list(string)
    default = ["10.0.1.0/24", "10.0.2.0/24"]
}

# VPC Public Subnets
variable "vpc_public_subnets" {
    description = "VPC Public Subnets"
    type = list(string)
    default = ["10.0.101.0/24", "10.0.102.0/24"]
}

# VPC Database Subnets
variable "vpc_database_subnets" {
    description = "VPC Database Subnets"
    type = list(string)
    default = ["10.0.151.0/24", "10.0.152.0/24"]
}

# VPC Create Databse Subnet Group 
variable "vpc_create_database_subnet_group" {
    description = "VPC Create Database Subnet Group"
    type = bool
    default = true
}

# VPC Create Databse Subnet Route Table 
variable "vpc_create_database_subnet_route_table" {
    description = "VPC Create Database Subnet Route Table"
    type = bool
    default = true
}

# VPC Enable NAT Gateway
variable "vpc_enable_nat_gateway" {
    description = "Enable NAT Gateways for Private Subnets Outbound"
    type = bool
    default = true
}

# VPC Enable Single NAT Gateway
variable "vpc_enable_single_nat_gateway" {
    description = "Enable only one NAT gateway in one Availability Zone"
    type = bool
    default = true
}
