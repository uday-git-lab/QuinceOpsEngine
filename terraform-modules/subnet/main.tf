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

resource "aws_subnet" "subnet" {
  availability_zone       = var.availability_zone
  vpc_id                  = var.vpc_id
  cidr_block              = var.cidr_block
  map_public_ip_on_launch = var.map_public_ip_on_launch
  tags                    = merge(var.tags, local.commonTags)
}