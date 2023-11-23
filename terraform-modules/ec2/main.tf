module "blue-green" {
    source                      = "../blue_green"
    product_name                = var.product_name
    env                         = var.env
    name                        = var.name
    tags                        = var.tags 
}

data "template_file" "user_data_server" {
    template = var.user_data_path
    vars     = var.variable_data
}

resource "aws_instance" "ec2" {
    ami                         = var.ami
    instance_type               = var.instance_type
    availability_zone           = var.availability_zone
    iam_instance_profile        = var.iam_instance_profile
    key_name                    = var.key_name
    vpc_security_group_ids      = var.vpc_security_group_ids
    subnet_id                   = var.subnet_id
    associate_public_ip_address = var.associate_public_ip_address
    tags                        = merge(var.tags,{
                                      Name = module.blue-green.id
                                  })
    user_data                   = data.template_file.user_data_server.rendered
    root_block_device {
        encrypted               = var.encrypted
        delete_on_termination   = var.delete_on_termination
        iops                    = var.iops
        volume_size             = var.volume_size
        volume_type             = var.volume_type
        tags                    = merge(var.tags,{
                                      Name = "${module.blue-green.id}-volume"
                                  })
    }
}
