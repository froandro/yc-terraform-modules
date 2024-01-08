## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 0.13 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_local"></a> [local](#provider\_local) | n/a |
| <a name="provider_yandex"></a> [yandex](#provider\_yandex) | n/a |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [local_file.private-key](https://registry.terraform.io/providers/hashicorp/local/latest/docs/resources/file) | resource |
| [yandex_iam_service_account.this](https://registry.terraform.io/providers/yandex-cloud/yandex/latest/docs/resources/iam_service_account) | resource |
| [yandex_iam_service_account_static_access_key.sa-static-key](https://registry.terraform.io/providers/yandex-cloud/yandex/latest/docs/resources/iam_service_account_static_access_key) | resource |
| [yandex_resourcemanager_folder_iam_member.this](https://registry.terraform.io/providers/yandex-cloud/yandex/latest/docs/resources/resourcemanager_folder_iam_member) | resource |
| [yandex_iam_service_account.yc-service-account](https://registry.terraform.io/providers/yandex-cloud/yandex/latest/docs/data-sources/iam_service_account) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_folder"></a> [folder](#input\_folder) | Folder ID | `string` | `"b1gsd1tj5k2ia1pobrj4"` | no |
| <a name="input_name_service_account"></a> [name\_service\_account](#input\_name\_service\_account) | Name service account | `set(string)` | <pre>[<br>  "service-account1",<br>  "service-account2"<br>]</pre> | no |
| <a name="input_service_account_role"></a> [service\_account\_role](#input\_service\_account\_role) | Role service account | `string` | `"editor"` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_attributes"></a> [attributes](#output\_attributes) | n/a |
