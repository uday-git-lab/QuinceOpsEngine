module "blue-green" {
    source       = "../blue_green"
    product_name = var.product_name
    env          = var.env
    name         = var.name
    tags         = var.tags
}

resource "aws_eip" "elastic_ip" {
  instance = var.instance_id
  vpc      = true
  tags   = merge(var.tags,{
        Name = module.blue-green.id
  })
}
