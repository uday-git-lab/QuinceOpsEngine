module "blue-green" {
  source    = "../blue_green"
  product_name = var.product_name
  env     = var.env
  name      = var.name
  tags      = var.tags
}


locals {
  commonTags = {
    Name = module.blue-green.id
  }
}

resource "aws_flow_log" "vpc_logs" {
  log_destination      = var.vpc_logs_s3_bucket
  log_destination_type = "s3"
  traffic_type         = "ALL"
  vpc_id               = aws_vpc.vpc.id
}

resource "aws_vpc" "vpc" {
  cidr_block                       = var.cidr_block
  instance_tenancy                 = "default"
  enable_dns_support               = var.enable_dns_support
  enable_dns_hostnames             = var.enable_dns_hostnames
  assign_generated_ipv6_cidr_block = var.assign_generated_ipv6_cidr_block
  tags                             = merge(var.tags, local.commonTags)
}
