## Providers

| Name | Version |
|------|---------|
| aws | ~> 2.0 |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:-----:|
| aws\_policy\_arns | (Required) - list of existing AWS resource policies to associate with the assumed role. | `list(string)` | n/a | yes |
| trusted\_arns | (Required) - list of IAM entities to add as principals to the trust policy of the assumed role | `list(string)` | n/a | yes |
| attributes | (Optional) - Additional attributes (e.g. `1`) | `list(string)` | `[]` | no |
| aws\_account\_id | (Optional) - The AWS account id of the provider being deployed to (e.g. 12345678). Autoloaded from account.tfvars | `string` | `""` | no |
| aws\_assume\_role\_arn | (Optional) - ARN of the IAM role when optionally connecting to AWS via assumed role. Autoloaded from account.tfvars. | `string` | `""` | no |
| aws\_region | (Optional) - The AWS region (e.g. ap-southeast-2). Autoloaded from region.tfvars. | `string` | `""` | no |
| delimiter | (Optional) - Delimiter to be used between `namespace`, `environment`, `stage`, `name` and `attributes` | `string` | `"-"` | no |
| enabled | (Optional) - A Switch that decides whether to create a terraform resource or run a provisioner. Default is true | `bool` | `true` | no |
| environment | (Optional) - Environment, e.g. 'dev', 'qa', 'staging', 'prod' | `string` | `""` | no |
| name | (Optional) - Solution name, e.g. 'vault', 'consul', 'keycloak', 'k8s', or 'baseline' | `string` | `""` | no |
| namespace | (Optional) - Namespace, which could be your abbreviated product team, e.g. 'rci', 'mi', 'hp', or 'core' | `string` | `""` | no |
| path | (Optional) - Path in which to create the role. | `string` | `"/"` | no |
| tags | (Optional) - Additional tags | `map(string)` | `{}` | no |

## Outputs

| Name | Description |
|------|-------------|
| arn | The Amazon Resource Name (ARN) specifying the role. |
| create\_date | The creation date of the IAM role. |
| description | The description of the role. |
| id | The name of the role. |
| unique\_id | The stable and unique string identifying the role. |

