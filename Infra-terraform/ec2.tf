####################################################################################
####                                                                            ####
####                                                                            ####
####                   quince  ap-south-1                                       ####
####                                                                            ####
####                                                                            ####
####################################################################################

module ec2_quince_worker_ap_south_1 {

    source                          = "git::ssh://git@github.com/uday-git-lab/QuinceOpsEngine//terraform-modules//ec2?ref=v1.0"
    name                            = "worker-1"
    product_name                    = var.product_name
    env                             = var.env
    tags                            = merge(
                                            local.global_tags,
                                            {
                                                "Creator" : "udayakmr105@gmail.com",
                                                "Owner": "udayakmr105@gmail.com"
                                            }
                                        )
    subnet_id                       = data.terraform_remote_state.networking_state.outputs.common_public_subnet_ap_south_1a
    vpc_security_group_ids          = [module.quince_office_access_sg.security_group_id]
    availability_zone               = "${var.region}a"
    ami                             = var.ami_image_ap_south_1 
    instance_type                   = "t3a.medium"
    iam_instance_profile            = module.ec2_instance_profile.instance_profile_name
    key_name                        = var.key_name
    associate_public_ip_address     = "false"
    delete_on_termination           = "true"
    iops                            = 3000
    volume_size                     = 20
    encrypted                       = "true"
    volume_type                     = "gp3"
    user_data_path                  = file("./init.sh")
}

module "ec2_instance_profile" {
    source       = "git::ssh://git@github.com/uday-git-lab/QuinceOpsEngine//terraform-modules//ec2_instance_profile?ref=v1.4"
    product_name = var.product_name
    env          = var.env
    name         = "ssm-s3"
    role_name    = module.iam_role_s3.role_name
    tags                            = merge(
                                            local.global_tags,
                                            {
                                                "Creator" : "udayakmr105@gmail.com",
                                                "Owner": "udayakmr105@gmail.com"
                                            }
                                        )
}