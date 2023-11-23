shared_credentials_files = ["~/.aws/credentials"]
profile                  = "default"
product_name             = "quince"
env                      = "dev"

########### VPC Variables ###############

vpc_cidr_block_region_ap_south_1    = "172.40.0.0/16"

########### Subent Specific Variables ap-south-1 ############
common_subnet_availability_zone_a = "ap-south-1a"
common_public_subnet_cidr_block_a = "172.40.0.0/21"
common_public_subnet_cidr_block_b = "172.40.8.0/21"

common_subnet_availability_zone_b = "ap-south-1b"
common_private_subnet_cidr_block_b = "172.40.16.0/21"
common_private_subnet_cidr_block_a = "172.40.24.0/21"