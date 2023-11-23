# aws-terraform-s3

This module builds a s3 bucket with varying options.  

## Basic Usage of s3_data

```HCL
module "s3_dev_vpc_logs" {
  source           = "your-module-source" 
  product_name     = var.product_name
  env              = var.env
  name             = "s3-vpc-logs"
  enable_versioning = true
  tags             = merge(
                                      local.global_tags,
                                      {
                                      "Creator"      		 = "udayakmr105@gmail.com"
                                      "Owner"		         = "udayakmr105@gmail.com"
                                      "Description"              = "Cpc logs s3 bucket."
                                      "Service"                  = "S3_for_vpc_logs"                                                                          
                                      })
}
```
## Requirements

No requirements.

## Providers

No providers.

## Modules

No modules.

## Resources

No resources.

## Inputs

No inputs.

## Outputs

No outputs.

<!-- BEGIN_TF_DOCS -->
## Requirements

No requirements.

## Providers

No providers.

## Modules

No modules.

## Resources

No resources.

## Inputs

No inputs.

## Outputs

No outputs.
<!-- END_TF_DOCS -->
