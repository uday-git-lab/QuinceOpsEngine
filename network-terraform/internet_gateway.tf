####################################################################################
####                                                                            ####
####                           Mumbai  (ap-south-1)                            ####
####                                                                            ####
####################################################################################

module "common_internet_gateway_ap_south_1" {
  source = "git::ssh://git@github.com/uday-git-lab/QuinceOpsEngine//terraform-modules//internet_gateway?ref=v1.0"
  product_name = var.product_name
  env          = var.env
  name         = "igw"
  vpc_id       = module.common_vpc.vpc_id
  tags = merge(
    local.global_tags,
    {
      "Creator" : "udayakmr105@gmail.com",
      "Owner" : "udayakmr105@gmail.com",
    }
  )
}


