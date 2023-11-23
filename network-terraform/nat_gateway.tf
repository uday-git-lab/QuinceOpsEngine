#################### AZ A nat gateway ###################

module "nat_gateway_ap_south_1" {
        source        = "git::ssh://git@github.com/uday-git-lab/QuinceOpsEngine//terraform-modules//nat_gateway?ref=v1.0"
        product_name  = var.product_name
        env           = var.env
        name          = "nat-gateway"
        public_subnet = module.common_public_subnet_a.subnet_id
        tags = merge(
    		local.global_tags,
    {
      "Creator" : "udayakmr105@gmail.com",
      "Owner" : "udayakmr105@gmail.com",
    }
  )       	
}

#################### AZ B nat gateway ###################


module "nat_gateway_az_b_ap_south_1" {
        source        = "git::ssh://git@github.com/uday-git-lab/QuinceOpsEngine//terraform-modules//nat_gateway?ref=v1.0"
        product_name  = var.product_name
        env           = var.env
        name          = "nat-gateway-az-b"
        public_subnet = module.common_public_subnet_b.subnet_id
        tags = merge(
                local.global_tags,
    {
      "Creator" : "udayakmr105@gmail.com",
      "Owner" : "udayakmr105@gmail.com",
    }
  )
}                                       




