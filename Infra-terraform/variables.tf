variable "region" {
  description = "AWS Resource Region"
  type        = string
}

variable "product_name" {
  description = "AWS product_name"
  type        = string
}

variable "env" {
  description = "AWS deployment"
  type        = string
}




####################################################################################
####                                                                            ####
####                                                                            ####
####                         Common Tags	                                      ####
####                                                                            ####
####                                                                            ####
####################################################################################

variable "env_key" {
  description = "Environment"
  type        = string
}

variable "creator_key" {
  description = "Creator"
  type        = string
}

variable "creator_value" {
  description = "Terraform"
  type        = string
}

variable "owner_key" {
  description = "Owner"
  type        = string
}

variable "owner_value" {
  description = "Terraform"
  type        = string  
}


####################################################################################
####                                                                            ####
####                                                                            ####
####                        AMI'S               	                              ####
####                                                                            ####
####                                                                            ####
####################################################################################

variable "ami_image_ap_south_1" {
  description = "Golden Image"
  type        = string  
} 

####################################################################################
####                                                                            ####
####                                                                            ####
####                        PEM Keys                 	                          ####
####                                                                            ####
####                                                                            ####
####################################################################################

variable "key_name" {
  description = "pem key"
  type        = string  
}

