module "blue-green" {
  source    = "../blue_green"
  product_name = var.product_name
  env     = var.env
  name      = var.name
  tags      = var.tags
}

resource "aws_internet_gateway" "internet_gateway" {
  vpc_id = var.vpc_id
  tags   = merge(var.tags,{
    Name = module.blue-green.id
  })
}