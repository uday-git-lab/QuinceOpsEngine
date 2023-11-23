# aws-terraform-s3

This module builds a s3 bucket with varying options.  

## Basic Usage of s3_data

```HCL
module "s3_dev_vpc_logs" {
  source           = "git::ssh://git@github.com/jodo-tech/terraform-modules//s3/s3_data?ref=v1.8" 
  product_name     = var.product_name
  env              = var.env
  name             = "s3-vpc-logs"
  enable_versioning = true
  tags             = merge(
                                      local.global_tags,
                                      {
                                      "Creator"      		 = "vansh.kumar@jodopay.com"
                                      "Owner"		         = "vansh.kumar@jodopay.com"
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
