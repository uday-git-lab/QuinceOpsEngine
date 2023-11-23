module "blue-green" {
  source            = "../../blue_green"
  product_name      = var.product_name
  env               = var.env
  name              = var.name
  tags              = var.tags
}

locals {
  commonTags = {
    Name = module.blue-green.id
  }
}

resource "aws_s3_bucket" "bucket" {
  bucket			 = module.blue-green.id
  acl    			 = var.acl
  tags   			 = merge(var.tags, local.commonTags)
  versioning {
    enabled = var.enable_versioning
  }
 
 acceleration_status = var.acceleration_status 
 server_side_encryption_configuration {
    rule {
      apply_server_side_encryption_by_default {
        sse_algorithm = var.sse_algorithm
      }
    }
  }
}
