module "blue-green" {
  source        = "../blue_green"
  product_name  = var.product_name
  env           = var.env
  name          = var.name
  tags          = var.tags
}

locals {
  commonTags = {
    Name = module.blue-green.id
  }
}

data "aws_caller_identity" "current" {}

data "aws_vpc" "selected" {
  id = var.vpc_id
}

resource "aws_vpc_peering_connection" "owner" {
  vpc_id = var.vpc_id
  peer_vpc_id   = var.peer_vpc_id
  peer_owner_id = data.aws_caller_identity.current.account_id  
  tags          = merge(var.tags, local.commonTags)
}

resource "aws_vpc_peering_connection_accepter" "peer" {
  vpc_peering_connection_id = "${aws_vpc_peering_connection.owner.id}"
  tags          = merge(var.tags, local.commonTags)
}
