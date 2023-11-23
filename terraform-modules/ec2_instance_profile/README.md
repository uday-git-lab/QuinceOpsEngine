<!-- BEGIN_TF_DOCS -->
## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | n/a |

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_blue-green"></a> [blue-green](#module\_blue-green) | ../blue_green | n/a |

## Resources

| Name | Type |
|------|------|
| [aws_iam_instance_profile.instance_profile](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_instance_profile) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_env"></a> [env](#input\_env) | env (e.g. `prod`, `dev`, `staging`, `infra`) | `string` | n/a | yes |
| <a name="input_name"></a> [name](#input\_name) | Name  (e.g. `lambda` or `cluster`) | `string` | n/a | yes |
| <a name="input_product_name"></a> [product\_name](#input\_product\_name) | product\_name (e.g. `falcon` or `magicleap`) | `string` | n/a | yes |
| <a name="input_role_name"></a> [role\_name](#input\_role\_name) | EC2 instance role name | `string` | n/a | yes |
| <a name="input_tags"></a> [tags](#input\_tags) | n/a | `map(string)` | `{}` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_instance_profile_name"></a> [instance\_profile\_name](#output\_instance\_profile\_name) | Instance profile name |
<!-- END_TF_DOCS -->