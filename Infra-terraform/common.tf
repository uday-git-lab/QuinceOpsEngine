
####################################################################################
####                                                                            ####
####                                                                            ####
####                        IAM   Role                                          ####
####                                                                            ####
####                                                                            ####
####################################################################################

data "aws_iam_policy_document" "ec2_assume_role_policy" {
  statement {
    actions = ["sts:AssumeRole"]

    principals {
      type        = "Service"
      identifiers = ["ec2.amazonaws.com"]
    }
  }
}



module "iam_role_s3" {
  source             = "git::ssh://git@github.com/uday-git-lab/QuinceOpsEngine//terraform-modules//iam_roles?ref=v1.3"
  product_name       = local.product_name
  env                = local.env
  assume_role_policy = data.aws_iam_policy_document.ec2_assume_role_policy.json
  name               = "ec2-s3-role-v1"
  tags                            = merge(
                                            local.global_tags,
                                            {
                                                "Creator" : "udayakmr105@gmail.com",
                                                "Owner": "udayakmr105@gmail.com"
                                            }
                                        )
}


####################################################################################
####                                                                            ####
####                                                                            ####
####                    S3  policy                                              ####
####                                                                            ####
####                                                                            ####
####################################################################################

data "aws_iam_policy_document" "s3_rw_policy_doc" {
  statement {
    actions = [
      "s3:GetObject",
      "s3:PutObject",
      "s3:DeleteObject"
    ]
    effect = "Allow"
    resources = [
      "${module.s3_quince.bucket_arn}/*"
    ]
  }
}



module "quince_s3_rw_iam_policy" {
    source              = "git::ssh://git@github.com/uday-git-lab/QuinceOpsEngine//terraform-modules//iam_policy?ref=v1.1"
    name                = "s3_quince"
    product_name        = var.product_name
    env                 = local.env
    tags                            = merge(
                                            local.global_tags,
                                            {
                                                "Creator" : "udayakmr105@gmail.com",
                                                "Owner": "udayakmr105@gmail.com"
                                            }
                                        )
    iam_policy_doc_json = data.aws_iam_policy_document.s3_rw_policy_doc.json
}

####################################################################################
####                                                                            ####
####                                                                            ####
####                    S3 role policy attachments                              ####
####                                                                            ####
####                                                                            ####
####################################################################################

module "quince_s3_iam_role_policy_attachment" {
  source                  = "git::ssh://git@github.com/uday-git-lab/QuinceOpsEngine//terraform-modules//iam_role_policy_attachments?ref=v1.1"
  role_name               =  module.iam_role_s3.role_name
  custom_role_policy_arns = [module.quince_s3_rw_iam_policy.arn]
}