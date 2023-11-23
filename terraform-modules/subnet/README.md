# Usage
<!--- BEGIN_TF_DOCS --->

## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| aws | n/a |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| availability\_zone | Availability zone | `string` | n/a | yes |
| cidr\_block | CIDR block | `string` | n/a | yes |
| env | e.g. `prod`, `dev`, `env`) | `string` | n/a | yes |
| map\_public\_ip\_on\_launch | Public IP on launch | `string` | n/a | yes |
| name | Name  (e.g. `Cred` or `Flex` or `pay` ) | `string` | n/a | yes |
| product\_name | product\_name (e.g. `Cred` or `Flex`) | `string` | n/a | yes |
| tags | n/a | `map(string)` | n/a | yes |
| vpc\_id | VPC ID | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| subnet\_arn | The ARN of the subnet created |
| subnet\_id | The ID of the subnet created |

<!--- END_TF_DOCS --->
