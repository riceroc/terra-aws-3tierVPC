locals {
  owners = var.business_unit
  environment = var.environment
  name = "${var.business_unit}-${var.environment}"
  # name = "${local.owners}-${local.environment}"
  common_tags = {
    owners = local.owners
    environment = local.environment
  }
  eks_cluster_name = "{local.name}-${var.cluster_name}"
}