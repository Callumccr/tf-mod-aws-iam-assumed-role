<!-- 














  ** DO NOT EDIT THIS FILE
  ** 
  ** This file was automatically generated by the `build-harness`. 
  ** 1) Make all changes to `README.yaml` 
  ** 2) Run `make init` (you only need to do this once)
  ** 3) Run`make readme` to rebuild this file. 
  **
  ** (We maintain HUNDREDS of open source projects. This is how we maintain our sanity.)
  **















  -->

#

[![README Header][logo]][website]

# tf-mod-aws-iam-assumed-role

## Module description


Use the `tf-mod-aws-iam-assumed-role` Terraform module to provision a AWS IAM role with an `sts:AssumeRole` trust and desired resource policies




Project: **[%!s(<nil>)](%!s(<nil>))** : [[%!s(<nil>)](%!s(<nil>))] | [[%!s(<nil>)](%!s(<nil>))] 




## Introduction

The module provisions the following resources:
  - An AWS IAM Role with an associated trust policy & desired resource polices



## Usage

**IMPORTANT:** The `master` branch is used in `source` just as an example. In your code, do not pin to `master` because there may be breaking changes between releases.
Instead pin to the release tag (e.g. `?ref=tags/x.y.z`) of one of our [latest releases](https://github.com/https://github.com/Callumccr/tf-mod-aws-iam-assumed-role/releases).


The below values shown in the usage of this module are purely representative, please replace desired values as required.

```hcl
```



## Quick Start

How to get up and running with this project:
  1. First action
  2. Second action
  3. Third action 

```hcl
```



## Examples
Simple and advanced examples of this project:

### Simple Example:
```hcl
```

### Advanced Example:
```hcl
```


## Providers

| Name | Version |
|------|---------|
| aws | ~> 2.0 >= 2.7.0 |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:-----:|
| aws\_policy\_arns | (Required) - list of existing AWS resource policies to associate with the assumed role. | `list(string)` | n/a | yes |
| trusted\_arns | (Required) - list of IAM entities to add as principals to the trust policy of the assumed role | `list(string)` | n/a | yes |
| attributes | (Optional) - Additional attributes (e.g. `1`) | `list(string)` | `[]` | no |
| aws\_account\_id | The AWS account id of the provider being deployed to (e.g. 12345678). Autoloaded from account.tfvars | `string` | `""` | no |
| aws\_assume\_role\_arn | (Optional) - ARN of the IAM role when optionally connecting to AWS via assumed role. Autoloaded from account.tfvars. | `string` | `""` | no |
| aws\_assume\_role\_external\_id | (Optional) - The external ID to use when making the AssumeRole call. | `string` | `""` | no |
| aws\_assume\_role\_session\_name | (Optional) - The session name to use when making the AssumeRole call. | `string` | `""` | no |
| aws\_region | The AWS region (e.g. ap-southeast-2). Autoloaded from region.tfvars. | `string` | `""` | no |
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




## Related Projects

You can find more [Terraform Modules](terraform_modules) by vising the link.

Additionally, check out these other related, and maintained projects.

- [%!s(<nil>)](%!s(<nil>)) - %!s(<nil>)



## References

For additional context, refer to some of these links. 

- [%!s(<nil>)](%!s(<nil>)) - %!s(<nil>)



## Help

**Got a question?** We got answers. 

File a Github [issue](https://github.com/Callumccr/tf-mod-aws-iam-assumed-role/issues), or message us on [Slack][slack]


### Contributors

|  [![Callum Robertson][callumccr_avatar]][callumccr_homepage]<br/>[Callum Robertson][callumccr_homepage] |
|---|


  [callumccr_homepage]: https://www.linkedin.com/in/callum-robertson-1a55b6110/

  [callumccr_avatar]: https://media-exp1.licdn.com/dms/image/C5603AQHb_3oZMZA5YA/profile-displayphoto-shrink_200_200/0?e=1588809600&v=beta&t=5QQQAlHrm1od5fQNZwdjOtbZWvsGcgNBqFRhZWgnPx4




---



---


[![README Footer][logo]][website]

  [logo]: https://wariva-github-assets.s3.eu-west-2.amazonaws.com/logo.png
  [website]: https://www.linkedin.com/company/52152765/admin/
  [github]: https://github.com/Callumccr
  [slack]: https://wariva.slack.com
  [linkedin]: https://www.linkedin.com/in/callum-robertson-1a55b6110/
  [terraform_modules]: https://github.com/Callumccr