####################################################################################
####                                                                            ####
####                           Mumbai  (ap-south-1)                            ####
####                                                                            ####
####################################################################################

provider "aws" {
  region                  = "ap-south-1"
}


####################################################################################
####                                                                            ####
####                           Common infra state file                          ####
####                                                                            ####
####################################################################################

terraform {
  backend "s3" {
    bucket                  = "terraform-state-backend-quince-1"
    key                     = "common/common.tfstate"
    region                  = "ap-south-1"
    dynamodb_table          = "terraform-lock-table"

  }
}

####################################################################################
####                                                                            ####
####                      Networking state file sharing                         ####
####                                                                            ####
####################################################################################

data "terraform_remote_state" "networking_state" {
  backend = "s3"
  config = {
    bucket = "terraform-state-backend-quince-1"
    key    = "network/network.tfstate"
    region = "ap-south-1"
    dynamodb_table          = "terraform-lock-table"
  }
}