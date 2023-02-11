# MDB_POSTGRESQL_DATABASE

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
| [yandex_mdb_postgresql_database.morsh_pg_db](https://registry.terraform.io/providers/yandex-cloud/yandex/latest/docs/resources/mdb_postgresql_database) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_cloud_id"></a> [cloud\_id](#input\_cloud\_id) | n/a | `string` | `"b1gm80drf2f2dk70jc3f"` | no |
| <a name="input_creation_zone_yandex"></a> [creation\_zone\_yandex](#input\_creation\_zone\_yandex) | n/a | `string` | n/a | yes |
| <a name="input_db_name"></a> [db\_name](#input\_db\_name) | Name of DB, which you want to add to pg cluster | `string` | `"django"` | no |
| <a name="input_folder_id"></a> [folder\_id](#input\_folder\_id) | n/a | `string` | `"b1g16ac5if9cnssnhfip"` | no |
| <a name="input_pg_cluster_id"></a> [pg\_cluster\_id](#input\_pg\_cluster\_id) | Id of cluster where to add Database | `string` | n/a | yes |
| <a name="input_pg_extension_1_name"></a> [pg\_extension\_1\_name](#input\_pg\_extension\_1\_name) | Extension to use with this db | `string` | `"uuid-ossp"` | no |
| <a name="input_pg_extension_1_version"></a> [pg\_extension\_1\_version](#input\_pg\_extension\_1\_version) | Extension version to use with this db | `number` | `1.1` | no |
| <a name="input_pg_extension_2_name"></a> [pg\_extension\_2\_name](#input\_pg\_extension\_2\_name) | Extension to use with this db | `string` | `"xml2"` | no |
| <a name="input_pg_extension_2_version"></a> [pg\_extension\_2\_version](#input\_pg\_extension\_2\_version) | Extension version to use with this db | `number` | `1.1` | no |
| <a name="input_pg_lc_collate"></a> [pg\_lc\_collate](#input\_pg\_lc\_collate) | Collate Settings for Database selections.Shows the collation order locale | `string` | `"en_US.UTF-8"` | no |
| <a name="input_pg_lc_type"></a> [pg\_lc\_type](#input\_pg\_lc\_type) | Locale support in DB | `string` | `"en_US.UTF-8"` | no |
| <a name="input_pg_owner_name"></a> [pg\_owner\_name](#input\_pg\_owner\_name) | Name of user in PG cluster whom will be owner of DB | `string` | n/a | yes |
| <a name="input_service_account_key"></a> [service\_account\_key](#input\_service\_account\_key) | n/a | `string` | `"./key.json"` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_morsh_yc_pg_db_id"></a> [morsh\_yc\_pg\_db\_id](#output\_morsh\_yc\_pg\_db\_id) | n/a |
| <a name="output_morsh_yc_pg_db_name"></a> [morsh\_yc\_pg\_db\_name](#output\_morsh\_yc\_pg\_db\_name) | n/a |
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
