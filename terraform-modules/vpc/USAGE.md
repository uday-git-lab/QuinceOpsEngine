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
| assign\_generated\_ipv6\_cidr\_block | (Optional) Requests an Amazon-provided IPv6 CIDR block with a /56 prefix length for the VPC | `string` | `false` | no |
| cidr\_block | (Required) CIDR block for VPC | `string` | n/a | yes |
| enable\_dns\_hostnames | (Optional) Enable/Disable DNS hostnames in VPC | `string` | `true` | no |
| enable\_dns\_support | (Optional) Enable/Disable DNS support in VPC | `string` | `true` | no |
| env | env (e.g. `prod`, `dev`, `staging`, `infra`) | `string` | n/a | yes |
| name | Name  (e.g. `lambda` or `cluster`) | `string` | n/a | yes |
| product\_name | product\_name (e.g. `Cred` or `Flex` or `Pay`) | `string` | n/a | yes |
| tags | n/a | `map(string)` | `{}` | no |
| vpc\_logs\_s3\_bucket | bucket for VPC logs | `string` | `true` | no |

## Outputs

| Name | Description |
|------|-------------|
| vpc\_arn | ARN of the VPC |
| vpc\_cidr\_block | The CIDR block of the VPC |
| vpc\_id | The ID of VPC created |

<!--- END_TF_DOCS --->
