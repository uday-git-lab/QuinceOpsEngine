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
| env | e.g. `prod`, `dev`, `env`) | `string` | n/a | yes |
| name | Name  (e.g. `Flex` or `cred`) | `string` | n/a | yes |
| product\_name | product\_name (e.g. `Cred` or `Flex`) | `string` | n/a | yes |
| tags | n/a | `map(string)` | n/a | yes |
| vpc\_id | VPC ID | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| internet\_gateway\_id | Id of the Internet gateway created |

<!--- END_TF_DOCS --->
