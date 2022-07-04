variable "aws_region" {
    description = "Region where resources will be created"
    type = string
    default = "us-east-1"
}

# Env variables
variable "environment" {
    description = "Environment variable used as a prefix"
    type = string
    default = "dev"
}

# Business Unit
variable "business_unit" {
    description = "Business Unit this infrastructure belongs to"
    type = string
    default = "SAP"
}