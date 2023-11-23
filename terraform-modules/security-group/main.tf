module "blue-green" {
  source       = "../blue_green"
  product_name = var.product_name
  env          = var.env
  name         = var.name
  tags         = var.tags
}

resource "aws_security_group" "security_group" {
  name   = module.blue-green.id
  vpc_id = var.vpc_id
  dynamic "ingress" {
    for_each = var.ingress_rules
    content {
      from_port        = lookup(ingress.value, "from_port")
      to_port          = lookup(ingress.value, "to_port")
      protocol         = lookup(ingress.value, "protocol", "tcp")
      description      = lookup(ingress.value, "description")
      cidr_blocks      = lookup(ingress.value, "cidr_blocks", null)
      ipv6_cidr_blocks = lookup(ingress.value, "ipv6_cidr_blocks", null)
      prefix_list_ids  = lookup(ingress.value, "prefix_list_ids", null)
      security_groups  = lookup(ingress.value, "security_groups", null)
    }
  }
  dynamic "egress" {
    for_each = var.egress_rules
    content {
      from_port        = lookup(egress.value, "from_port")
      to_port          = lookup(egress.value, "to_port")
      protocol         = lookup(egress.value, "protocol", "tcp")
      description      = lookup(egress.value, "description")
      cidr_blocks      = lookup(egress.value, "cidr_blocks", null)
      ipv6_cidr_blocks = lookup(egress.value, "ipv6_cidr_blocks", null)
      prefix_list_ids  = lookup(egress.value, "prefix_list_ids", null)
      security_groups  = lookup(egress.value, "security_groups", null)
    }
  }
  tags = merge(var.tags, {
    Name = "${module.blue-green.id}"
  })
}
