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

resource "aws_route_table" "route_table" {
  vpc_id = var.vpc_id
  tags   = merge(var.tags, local.commonTags)
}