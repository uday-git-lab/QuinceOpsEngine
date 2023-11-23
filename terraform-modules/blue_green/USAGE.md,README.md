# Usage
<!--- BEGIN_TF_DOCS --->

## Requirements

No requirements.

## Providers

No provider.

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| env | env (e.g. `prod`, `dev`, `staging`, `test`) | `string` | n/a | yes |
| name | Name  (e.g. `application name`) | `string` | n/a | yes |
| product\_name | product\_name (e.g. `Cred` or `Flex` or `Pay`) | `string` | n/a | yes |
| resource\_version | Version of the resource. | `string` | `"1"` | no |
| tags | n/a | `map(string)` | `{}` | no |

## Outputs

| Name | Description |
|------|-------------|
| id | ID |
| identifier | Version Identifier |

<!--- END_TF_DOCS --->
