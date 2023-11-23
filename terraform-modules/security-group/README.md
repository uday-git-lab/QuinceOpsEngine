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
| egress\_rules | n/a | <pre>list(object({<br>      from_port   = number<br>      to_port     = number<br>      type        = string<br>      protocol    = string<br>      description = string<br>      cidr_blocks = optional(list(string))<br>      ipv6_cidr_blocks = optional(list(string))<br>      prefix_list_ids = optional(list(string))<br>      security_groups = optional(list(string))<br>    }))</pre> | n/a | yes |
| env | e.g. `prod`, `dev`, `stage`) | `string` | n/a | yes |
| ingress\_rules | n/a | <pre>list(object({<br>      from_port   = number<br>      to_port     = number<br>      type        = string<br>      protocol    = string<br>      description = string<br>      cidr_blocks = optional(list(string))<br>      ipv6_cidr_blocks = optional(list(string))<br>      prefix_list_ids = optional(list(string))<br>      security_groups = optional(list(string))<br>    }))</pre> | n/a | yes |
| name | Name of the resource | `string` | n/a | yes |
| product\_name | Namespace (e.g. `CRED` or `Flex` or `Pay`) | `string` | n/a | yes |
| tags | Tags for the inspector resource group | <pre>object({<br>    Creator = string    <br>  })</pre> | n/a | yes |
| vpc\_id | VPC ID | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| security\_group\_id | n/a |
| security\_group\_name | n/a |

<!--- END_TF_DOCS --->
