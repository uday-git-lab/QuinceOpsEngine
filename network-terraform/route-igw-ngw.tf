
####################################################################################
####                                                                            ####
####                 Mumbai Region  (ap-south-1)                                ####
####                                                                            ####
####################################################################################
module "internet_gateway_public_route" {
  source              = "git::ssh://git@github.com/uday-git-lab/QuinceOpsEngine//terraform-modules//internet_gateway_routes?ref=v1.0"
  internet_gateway_id = module.common_internet_gateway_ap_south_1.internet_gateway_id
  route_table_id      = module.common_public_route_table_region_ap_south_1.id
}


module "nat_gateway_private_route" {
   source             = "git::ssh://git@github.com/uday-git-lab/QuinceOpsEngine//terraform-modules//nat_gateway_routes?ref=v1.0"
   nat_gateway_id     = module.nat_gateway_ap_south_1.nat_gateway_id
   route_table_id     = module.common_private_route_table_region_ap_south_1.id
}


