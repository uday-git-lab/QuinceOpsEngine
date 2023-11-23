####################################################################################
####                                                                            ####
####                                                                            ####
####                     Mumbai  (ap-south-1)                                   ####
####                                                                            ####
####                                                                            ####
####################################################################################

module "common_public_subnet_a" {
  source                  = "git::ssh://git@github.com/uday-git-lab/QuinceOpsEngine//terraform-modules//subnet?ref=v1.0"
  product_name            = var.product_name
  env                     = var.env
  name                    = "public-subnet-a"
  vpc_id                  = module.common_vpc.vpc_id
  availability_zone       = var.common_subnet_availability_zone_a
  cidr_block              = var.common_public_subnet_cidr_block_a
  map_public_ip_on_launch = "true"
  tags = merge(
    local.global_tags,
    {
      "Creator" : "udayakmr105@gmail.com",
      "Owner" : "udayakmr105@gmail.com",
    }
  )
}

module "common_public_subnet_b" {
  source                  = "git::ssh://git@github.com/uday-git-lab/QuinceOpsEngine//terraform-modules//subnet?ref=v1.0"
  product_name            = var.product_name
  env                     = var.env
  name                    = "public-subnet-b"
  vpc_id                  = module.common_vpc.vpc_id
  availability_zone       = var.common_subnet_availability_zone_b
  cidr_block              = var.common_public_subnet_cidr_block_b
  map_public_ip_on_launch = "true"
  tags = merge(
    local.global_tags,
    {
      "Creator" : "udayakmr105@gmail.com",
      "Owner" : "udayakmr105@gmail.com",
    }
  )
}

module "common_private_subnet_b" {
  source                  = "git::ssh://git@github.com/uday-git-lab/QuinceOpsEngine//terraform-modules//subnet?ref=v1.0"
  product_name            = var.product_name
  env                     = var.env
  name                    = "private-subnet-b"
  vpc_id                  = module.common_vpc.vpc_id
  availability_zone       = var.common_subnet_availability_zone_b
  cidr_block              = var.common_private_subnet_cidr_block_b
  map_public_ip_on_launch = "false"
  tags = merge(
    local.global_tags,
    {
      "Creator" : "udayakmr105@gmail.com",
      "Owner" : "udayakmr105@gmail.com",
    }
  )
}

module "common_private_subnet_a" {
  source                  = "git::ssh://git@github.com/uday-git-lab/QuinceOpsEngine//terraform-modules//subnet?ref=v1.0"
  product_name            = var.product_name
  env                     = var.env
  name                    = "private-subnet-a"
  vpc_id                  = module.common_vpc.vpc_id
  availability_zone       = var.common_subnet_availability_zone_a
  cidr_block              = var.common_private_subnet_cidr_block_a
  map_public_ip_on_launch = "false"
  tags = merge(
    local.global_tags,
    {
      "Creator" : "udayakmr105@gmail.com",
      "Owner" : "udayakmr105@gmail.com",
    }
  )
}
