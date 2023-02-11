# MDB_POSTGRESQL_DATABASE_USER

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
| [yandex_mdb_postgresql_user.morsh_pg_db_user](https://registry.terraform.io/providers/yandex-cloud/yandex/latest/docs/resources/mdb_postgresql_user) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_cloud_id"></a> [cloud\_id](#input\_cloud\_id) | n/a | `string` | `"b1gm80drf2f2dk70jc3f"` | no |
| <a name="input_creation_zone_yandex"></a> [creation\_zone\_yandex](#input\_creation\_zone\_yandex) | n/a | `string` | n/a | yes |
| <a name="input_db_user"></a> [db\_user](#input\_db\_user) | Name of user in pg cluster | `string` | `"django"` | no |
| <a name="input_db_user_conn_limit"></a> [db\_user\_conn\_limit](#input\_db\_user\_conn\_limit) | Maximum connection for user | `number` | `100` | no |
| <a name="input_db_user_default_transaction_isolation"></a> [db\_user\_default\_transaction\_isolation](#input\_db\_user\_default\_transaction\_isolation) | **Sets the transaction isolation level of each new transaction**<br> Each SQL transaction has an isolation level, which can be either read uncommitted, <br> read committed, repeatable read, or serializable. <br> This parameter controls the default isolation level of each new transaction. <br> The default is read committed. | `string` | `"read committed"` | no |
| <a name="input_db_user_log_min_duration_statement"></a> [db\_user\_log\_min\_duration\_statement](#input\_db\_user\_log\_min\_duration\_statement) | Sets the minimum execution time above which statements will be logged. | `number` | `5000` | no |
| <a name="input_db_user_password"></a> [db\_user\_password](#input\_db\_user\_password) | (Required) Password for db user. Sensetive | `string` | n/a | yes |
| <a name="input_folder_id"></a> [folder\_id](#input\_folder\_id) | n/a | `string` | `"b1g16ac5if9cnssnhfip"` | no |
| <a name="input_pg_cluster_id"></a> [pg\_cluster\_id](#input\_pg\_cluster\_id) | (Required) Id of cluster where create user | `string` | n/a | yes |
| <a name="input_service_account_key"></a> [service\_account\_key](#input\_service\_account\_key) | n/a | `string` | `"./key.json"` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_morsh_yc_pg_user_id"></a> [morsh\_yc\_pg\_user\_id](#output\_morsh\_yc\_pg\_user\_id) | n/a |
| <a name="output_morsh_yc_pg_user_name"></a> [morsh\_yc\_pg\_user\_name](#output\_morsh\_yc\_pg\_user\_name) | n/a |
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
