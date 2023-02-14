# SkillFactory-B7-Project-Work-Webapp-MAIN

# [Roles are here](https://github.com/Morshimus/SkillFactory-B7-Project-Work-Webapp-Roles)

# [App is here](https://github.com/Morshimus/SkillFactory-B7-Project-Work-Webapp-APP)

## Задание 

* [x] - :one: ~~**Создать ВМ в Я.Облаке (минимальная конфигурация: 2vCPU, 2GB RAM, 20GB HDD).**~~
* [x] - :two: ~~**Установить и запустить на ВМ Docker.**~~
* [x] - :three: ~~**Установить и запустить на ВМ СУБД Postgres.**~~
* [x] - :four: ~~**В Postgres создать БД и пользователя с произвольным именем на ваш выбор и дать этому пользователю полные права на созданную БД.**~~
* [x] - :five: ~~**Создать Docker-образ:**~~
   - ~~*Содержащий Python 3, а также библиотеки для него: Flask, Psycopg2 (для работы с СУБД Postgres, хранящей данные) и ConfigParser.*~~
   - ~~*Содержащий код приложения на Python (копирующий его с локальной файловой системы). На хостовой ФС код будет лежать по пути: /srv/app/web.py.*~~
   - ~~*Содержащий конфигурационный файл приложения (копирующий его с локальной ФС). На хостовой ФС конфигурационный файл будет лежать по пути: /srv/app/conf/web.conf.*~~
   - ~~*Содержащий конфигурационный файл приложения (копирующий его с локальной ФС). На хостовой ФС конфигурационный файл будет лежать по пути: /srv/app/conf/web.conf.*~~
   - ~~*При запуске контейнера, он должен запускать описанный выше код.*~~
   - ~~*Образ должен быть оптимизирован с учетом лучших практик.*~~
   
# Start
 
 > Для того чтобы разобраться в нашем проекте понадобиться некая схема, как мы свяжем 3 разных репозитория в единую конструкцию.
 > При планировании было решено развернуть 2 среды приложения - тестовая и продакшн, где тестовая это локально настроеный экземпляр PostgreSQL а продакшн это Yandex Cloud mdb Postgresql Cluster. Контейнеры приложения будут разворачиваться на одной вм. Volumes буду файлы django - static, template, + django.conf.
```mermaid
sequenceDiagram
    MAIN->>+ROLES: Initiate terraform to launch playbook
    ROLES->>+MAIN: Roles installing Docker,Postgresql, and django inaisw docker containers
    MAIN-->>+APP: Provide VM and YC mdb Postgresql
    APP-->>+ROLES: Configure APP deployment 
```
$${\color{pink}Here \space We \space Go \space Again }$$


![image](https://github.com/Morshimus/SkillFactory-B7-Project-Work-Webapp-MAIN/blob/main/img/start.gif)
 
<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.3.5 |
| <a name="requirement_ansiblevault"></a> [ansiblevault](#requirement\_ansiblevault) | = 2.2.0 |
| <a name="requirement_local"></a> [local](#requirement\_local) | >= 2.3.0 |
| <a name="requirement_yandex"></a> [yandex](#requirement\_yandex) | ~> 0.84.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_ansiblevault"></a> [ansiblevault](#provider\_ansiblevault) | 2.2.0 |
| <a name="provider_local"></a> [local](#provider\_local) | 2.3.0 |
| <a name="provider_yandex"></a> [yandex](#provider\_yandex) | 0.84.0 |

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_morsh_instance_ya_1"></a> [morsh\_instance\_ya\_1](#module\_morsh\_instance\_ya\_1) | ./INSTANCE | n/a |
| <a name="module_morsh_pg_cluster_db_ya_1"></a> [morsh\_pg\_cluster\_db\_ya\_1](#module\_morsh\_pg\_cluster\_db\_ya\_1) | ./MDB_POSTGRESQL_DATABASE | n/a |
| <a name="module_morsh_pg_cluster_user_ya_1"></a> [morsh\_pg\_cluster\_user\_ya\_1](#module\_morsh\_pg\_cluster\_user\_ya\_1) | ./MDB_POSTGRESQL_DATABASE_USER | n/a |
| <a name="module_morsh_pg_cluster_ya_1"></a> [morsh\_pg\_cluster\_ya\_1](#module\_morsh\_pg\_cluster\_ya\_1) | ./MDB_POSTGRESQL_CLUSTER | n/a |
| <a name="module_morsh_sec_group_ya_1"></a> [morsh\_sec\_group\_ya\_1](#module\_morsh\_sec\_group\_ya\_1) | ./SEC_GROUP | n/a |

## Resources

| Name | Type |
|------|------|
| [local_file.yc_inventory](https://registry.terraform.io/providers/hashicorp/local/latest/docs/resources/file) | resource |
| [yandex_vpc_network.morsh-network](https://registry.terraform.io/providers/yandex-cloud/yandex/latest/docs/resources/vpc_network) | resource |
| [yandex_vpc_subnet.morsh-subnet-a](https://registry.terraform.io/providers/yandex-cloud/yandex/latest/docs/resources/vpc_subnet) | resource |
| [ansiblevault_path.db_key](https://registry.terraform.io/providers/MeilleursAgents/ansiblevault/2.2.0/docs/data-sources/path) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_cloud_id_yandex"></a> [cloud\_id\_yandex](#input\_cloud\_id\_yandex) | Cloud id of yandex.cloud provider | `string` | n/a | yes |
| <a name="input_folder_id_yandex"></a> [folder\_id\_yandex](#input\_folder\_id\_yandex) | Folder id of yandex.cloud provider | `string` | n/a | yes |
| <a name="input_network_name_yandex"></a> [network\_name\_yandex](#input\_network\_name\_yandex) | Created netowork in yandex.cloud name | `string` | n/a | yes |
| <a name="input_os_disk_size"></a> [os\_disk\_size](#input\_os\_disk\_size) | Size of required vm | `string` | `"20"` | no |
| <a name="input_pg_data_root"></a> [pg\_data\_root](#input\_pg\_data\_root) | Path to pg\_data root folder at APP servers. | `string` | `"/opt/pg_data"` | no |
| <a name="input_pg_version"></a> [pg\_version](#input\_pg\_version) | Version of the PostgreSQL cluster. <br>  (allowed versions are: 10, 10-1c, 11, 11-1c, 12, 12-1c, 13, 13-1c, 14, 14-1c,**15**) | `number` | `15` | no |
| <a name="input_service_account_key_yandex"></a> [service\_account\_key\_yandex](#input\_service\_account\_key\_yandex) | Local storing service key. Not in git tracking | `string` | `"./key.json"` | no |
| <a name="input_source_image"></a> [source\_image](#input\_source\_image) | OS family of image | `string` | `"ubuntu-2004-lts"` | no |
| <a name="input_subnet_a_description_yandex"></a> [subnet\_a\_description\_yandex](#input\_subnet\_a\_description\_yandex) | n/a | `string` | `"Subnet A for morshimus instance A"` | no |
| <a name="input_subnet_a_name_yandex"></a> [subnet\_a\_name\_yandex](#input\_subnet\_a\_name\_yandex) | Subnet for 1st instance | `string` | `"morsh-subnet-a"` | no |
| <a name="input_subnet_a_v4_cidr_blocks_yandex"></a> [subnet\_a\_v4\_cidr\_blocks\_yandex](#input\_subnet\_a\_v4\_cidr\_blocks\_yandex) | IPv4 network for 1st instance subnet | `list(string)` | <pre>[<br>  "192.168.21.0/28"<br>]</pre> | no |
| <a name="input_useros"></a> [useros](#input\_useros) | OS native default user | `string` | `"ubuntu"` | no |
| <a name="input_zone_yandex_a"></a> [zone\_yandex\_a](#input\_zone\_yandex\_a) | Zone of 1st instance in yandex cloud | `string` | `"ru-central1-a"` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_db_user_password"></a> [db\_user\_password](#output\_db\_user\_password) | n/a |
| <a name="output_external_ip_address_vm_1"></a> [external\_ip\_address\_vm\_1](#output\_external\_ip\_address\_vm\_1) | n/a |
| <a name="output_hostname_vm_1"></a> [hostname\_vm\_1](#output\_hostname\_vm\_1) | n/a |
| <a name="output_internal_ip_address_vm_1"></a> [internal\_ip\_address\_vm\_1](#output\_internal\_ip\_address\_vm\_1) | n/a |
| <a name="output_morsh_pg_cluster_db_ya_1_id"></a> [morsh\_pg\_cluster\_db\_ya\_1\_id](#output\_morsh\_pg\_cluster\_db\_ya\_1\_id) | n/a |
| <a name="output_morsh_pg_cluster_db_ya_1_name"></a> [morsh\_pg\_cluster\_db\_ya\_1\_name](#output\_morsh\_pg\_cluster\_db\_ya\_1\_name) | n/a |
| <a name="output_morsh_pg_cluster_user_ya_1_id"></a> [morsh\_pg\_cluster\_user\_ya\_1\_id](#output\_morsh\_pg\_cluster\_user\_ya\_1\_id) | n/a |
| <a name="output_morsh_pg_cluster_user_ya_1_name"></a> [morsh\_pg\_cluster\_user\_ya\_1\_name](#output\_morsh\_pg\_cluster\_user\_ya\_1\_name) | n/a |
| <a name="output_morsh_pg_cluster_ya_1_host_fqdn"></a> [morsh\_pg\_cluster\_ya\_1\_host\_fqdn](#output\_morsh\_pg\_cluster\_ya\_1\_host\_fqdn) | n/a |
| <a name="output_morsh_pg_cluster_ya_1_id"></a> [morsh\_pg\_cluster\_ya\_1\_id](#output\_morsh\_pg\_cluster\_ya\_1\_id) | n/a |
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
