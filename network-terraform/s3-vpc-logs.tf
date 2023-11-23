module "s3_dev_vpc_logs" {
  source           = "git::ssh://git@github.com/uday-git-lab/QuinceOpsEngine//terraform-modules//s3/s3_data?ref=v1.0" 
  product_name     = var.product_name
  env              = var.env
  name             = "s3-vpc-logs"
  enable_versioning = true
  tags             = merge(
                                      local.global_tags,
                                      {
                                      "Creator"      		 = "udayakmr105@gmail.com"
                                      "Owner"		         = "udayakmr105@gmail.com"
                                      "Description"              = "vpc logs s3 bucket."
                                      "Service"                  = "S3_for_vpc_logs"                                                                          
                                      })
}


