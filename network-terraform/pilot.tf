####################################################################################
####                                                                            ####
####                           Mumbai  (ap-south-1)                            ####
####                                                                            ####
####################################################################################

provider "aws" {
  region                   = "ap-south-1"
  shared_credentials_files = var.shared_credentials_files
  profile                  = var.profile
}

####################################################################################
####                                                                            ####
####                           Network state file	                        ####
####                                                                            ####
####################################################################################

terraform {
  backend "s3" {
    bucket                  = "terraform-state-backend-quince-1"
    key                     = "network/network.tfstate"
    region                  = "ap-south-1"
  }
}
