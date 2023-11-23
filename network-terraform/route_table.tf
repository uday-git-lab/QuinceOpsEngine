####################################################################################
####                                                                            ####
####                                                                            ####
####                        Mumbai Region  (ap-south-1)                         ####
####                                                                            ####
####                                                                            ####
####################################################################################

module "common_private_route_table_region_ap_south_1" {
  source       = "git::ssh://git@github.com/uday-git-lab/QuinceOpsEngine//terraform-modules//route_table?ref=v1.0" 
  product_name = var.product_name
  env          = var.env
  name         = "private-route-table"
  vpc_id       = module.common_vpc.vpc_id
  tags = merge(
    local.global_tags,
    {
      "Creator" : "udayakmr105@gmail.com",
      "Owner" : "udayakmr105@gmail.com",
    }
  )
}


module "common_public_route_table_region_ap_south_1" {
  source       = "git::ssh://git@github.com/uday-git-lab/QuinceOpsEngine//terraform-modules//route_table?ref=v1.0" 
  product_name = var.product_name
  env          = var.env
  name         = "public-route-table"
  vpc_id       = module.common_vpc.vpc_id
  tags = merge(
    local.global_tags,
    {
      "Creator" : "udayakmr105@gmail.com",
      "Owner" : "udayakmr105@gmail.com",
    }
  )
}

