module "s3_quince" {
  source            = "git::ssh://git@github.com/uday-git-lab/QuinceOpsEngine//terraform-modules//s3/s3_data?ref=v1.0" 
  product_name      = var.product_name
  env               = var.env
  name              = "s3-quince-files"
  enable_versioning = true
  tags              = merge(
                                      local.global_tags,
                                      {
                                      "Creator"      		 = "udayakmr105@gmail.com"
                                      "Owner"		         = "udayakmr105@gmail.com"                                                                        
                                      })
}