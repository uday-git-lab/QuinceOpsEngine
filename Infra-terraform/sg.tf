####################################################################################
####                                                                            ####
####                                                                            ####
####                    Secgroup ap-south-1                                     ####
####                                                                            ####
####                                                                            ####
####################################################################################

module "quince_office_access_sg" {
   source       = "git::ssh://git@github.com/uday-git-lab/QuinceOpsEngine//terraform-modules//security-group"
   name         = "quince-office-access-sg"
   env          = var.env
   product_name = var.product_name
   tags         = {
      "Name"    = "quince-office-access-sg"
      "Creator" = "udayakmr105@gmail.com"
   }
  vpc_id = data.terraform_remote_state.networking_state.outputs.common_vpc_ap_south_1

  ingress_rules   = [
    {
      from_port   = 22
      to_port     = 22
      type        = "ingress"
      protocol    = "tcp"
      cidr_blocks = ["52.66.93.40/32"]
      description = "AWS Openvpn / Put Office VPN IP"
    },
    {
      from_port   = 22
      to_port     = 22
      type        = "ingress"
      protocol    = "tcp"
      cidr_blocks = ["0.0.0.0/0"]
      description = "Bastion Public"
    }

  ]

  egress_rules    = [
    {
      from_port   = 0
      to_port     = 0
      type        = "egress"
      protocol    = "-1"
      cidr_blocks = ["0.0.0.0/0"]
      description = "Allow all traffic"
    }
  ]
}
