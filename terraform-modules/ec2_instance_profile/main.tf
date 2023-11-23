module "blue-green" {
  source    = "../blue_green"
  product_name = var.product_name
  env     = var.env
  name      = var.name
  tags      = var.tags
  resource_version = var.resource_version
}


locals {
  commonTags = {
    Name = module.blue-green.id
  }
}

resource "aws_iam_instance_profile" "instance_profile" {
  name = module.blue-green.id
  role = var.role_name
  tags = var.tags
}