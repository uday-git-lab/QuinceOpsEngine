<!-- BEGIN_TF_DOCS -->
## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | n/a |
| <a name="provider_template"></a> [template](#provider\_template) | n/a |

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_blue-green"></a> [blue-green](#module\_blue-green) | ../blue_green | n/a |

## Resources

| Name | Type |
|------|------|
| [aws_instance.ec2](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/instance) | resource |
| [template_file.user_data_server](https://registry.terraform.io/providers/hashicorp/template/latest/docs/data-sources/file) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_ami"></a> [ami](#input\_ami) | The AMI ID | `string` | n/a | yes |
| <a name="input_associate_public_ip_address"></a> [associate\_public\_ip\_address](#input\_associate\_public\_ip\_address) | Whether to associate a public IP address with an instance in a VPC. | `string` | n/a | yes |
| <a name="input_availability_zone"></a> [availability\_zone](#input\_availability\_zone) | Availability Zone | `string` | n/a | yes |
| <a name="input_delete_on_termination"></a> [delete\_on\_termination](#input\_delete\_on\_termination) | Whether to associate a public IP address with an instance in a VPC. | `string` | n/a | yes |
| <a name="input_encrypted"></a> [encrypted](#input\_encrypted) | Set EBS encryption true of false. Default is true | `bool` | `true` | no |
| <a name="input_env"></a> [env](#input\_env) | e.g. `prod`, `dev`, `stage`) | `string` | n/a | yes |
| <a name="input_iam_instance_profile"></a> [iam\_instance\_profile](#input\_iam\_instance\_profile) | IAM Instance Profile | `string` | n/a | yes |
| <a name="input_instance_type"></a> [instance\_type](#input\_instance\_type) | Type of EC2 Instance | `string` | n/a | yes |
| <a name="input_iops"></a> [iops](#input\_iops) | Whether to associate a public IP address with an instance in a VPC. | `string` | n/a | yes |
| <a name="input_key_name"></a> [key\_name](#input\_key\_name) | Key name to be taken | `string` | n/a | yes |
| <a name="input_name"></a> [name](#input\_name) | Name of the resource | `string` | n/a | yes |
| <a name="input_product_name"></a> [product\_name](#input\_product\_name) | Namespace (e.g. `Falcon` or `Magicleap`) | `string` | n/a | yes |
| <a name="input_subnet_id"></a> [subnet\_id](#input\_subnet\_id) | Name of the tag with which subnet will be fetched for the security group | `string` | n/a | yes |
| <a name="input_tags"></a> [tags](#input\_tags) | Tags for the resource | `map(string)` | n/a | yes |
| <a name="input_user_data_path"></a> [user\_data\_path](#input\_user\_data\_path) | User data to provide when launching the instance. | `string` | n/a | yes |
| <a name="input_variable_data"></a> [variable\_data](#input\_variable\_data) | User data variable to be passed to user data template file | `map(string)` | `{}` | no |
| <a name="input_volume_size"></a> [volume\_size](#input\_volume\_size) | Value of the tag with which subnet will be fetched for the security group | `number` | n/a | yes |
| <a name="input_volume_type"></a> [volume\_type](#input\_volume\_type) | Whether to associate a public IP address with an instance in a VPC. | `string` | n/a | yes |
| <a name="input_vpc_security_group_ids"></a> [vpc\_security\_group\_ids](#input\_vpc\_security\_group\_ids) | vpc\_security\_group\_ids | `list(string)` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_ec2_instance_ebs_id"></a> [ec2\_instance\_ebs\_id](#output\_ec2\_instance\_ebs\_id) | n/a |
| <a name="output_ec2_instance_id"></a> [ec2\_instance\_id](#output\_ec2\_instance\_id) | n/a |
| <a name="output_ec2_instance_name"></a> [ec2\_instance\_name](#output\_ec2\_instance\_name) | n/a |
| <a name="output_ec2_instance_private_dns"></a> [ec2\_instance\_private\_dns](#output\_ec2\_instance\_private\_dns) | n/a |
| <a name="output_ec2_instance_private_ip"></a> [ec2\_instance\_private\_ip](#output\_ec2\_instance\_private\_ip) | n/a |
| <a name="output_ec2_instance_public_dns"></a> [ec2\_instance\_public\_dns](#output\_ec2\_instance\_public\_dns) | n/a |
| <a name="output_ec2_instance_public_ip"></a> [ec2\_instance\_public\_ip](#output\_ec2\_instance\_public\_ip) | n/a |
<!-- END_TF_DOCS -->