# SEC_GROUP

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.3.5 |
| <a name="requirement_yandex"></a> [yandex](#requirement\_yandex) | ~> 0.84.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_yandex"></a> [yandex](#provider\_yandex) | ~> 0.84.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [yandex_vpc_security_group.morsh_group](https://registry.terraform.io/providers/yandex-cloud/yandex/latest/docs/resources/vpc_security_group) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_cloud_id"></a> [cloud\_id](#input\_cloud\_id) | n/a | `string` | `"b1gm80drf2f2dk70jc3f"` | no |
| <a name="input_creation_zone_yandex"></a> [creation\_zone\_yandex](#input\_creation\_zone\_yandex) | n/a | `string` | n/a | yes |
| <a name="input_egress1_cidr_blocks"></a> [egress1\_cidr\_blocks](#input\_egress1\_cidr\_blocks) | (Required)Scope which allowed for outbound connections | `list(string)` | n/a | yes |
| <a name="input_egress1_description"></a> [egress1\_description](#input\_egress1\_description) | n/a | `string` | `"Rules for outbound connections for PGSQL cluster"` | no |
| <a name="input_egress1_protocol"></a> [egress1\_protocol](#input\_egress1\_protocol) | Rules for outbound protocol type | `string` | `"ANY"` | no |
| <a name="input_folder_id"></a> [folder\_id](#input\_folder\_id) | n/a | `string` | `"b1g16ac5if9cnssnhfip"` | no |
| <a name="input_ingress1_cidr_blocks"></a> [ingress1\_cidr\_blocks](#input\_ingress1\_cidr\_blocks) | (Required)Scope which allowed for inbound connections | `list(string)` | n/a | yes |
| <a name="input_ingress1_description"></a> [ingress1\_description](#input\_ingress1\_description) | n/a | `string` | `"Rules for inbound connections for PGSQL cluster"` | no |
| <a name="input_ingress1_port"></a> [ingress1\_port](#input\_ingress1\_port) | Port allowed inbound connection | `string` | `"6432"` | no |
| <a name="input_ingress1_protocol"></a> [ingress1\_protocol](#input\_ingress1\_protocol) | Rules for inbound protocol type | `string` | `"TCP"` | no |
| <a name="input_network_id"></a> [network\_id](#input\_network\_id) | YC network id for creation | `string` | n/a | yes |
| <a name="input_sec_description"></a> [sec\_description](#input\_sec\_description) | Description of security Group | `string` | `"This group allows inbound/outbound access to PGSQL cluster from local vpc netowrk only"` | no |
| <a name="input_sec_name"></a> [sec\_name](#input\_sec\_name) | Name of security Group | `string` | `"morsh-pg-sec"` | no |
| <a name="input_service_account_key"></a> [service\_account\_key](#input\_service\_account\_key) | n/a | `string` | `"./key.json"` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_morsh_yc_sec_group_id"></a> [morsh\_yc\_sec\_group\_id](#output\_morsh\_yc\_sec\_group\_id) | n/a |
| <a name="output_morsh_yc_sec_group_name"></a> [morsh\_yc\_sec\_group\_name](#output\_morsh\_yc\_sec\_group\_name) | n/a |
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
