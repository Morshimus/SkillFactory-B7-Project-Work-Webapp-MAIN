resource "yandex_mdb_postgresql_database" "morsh_pg_db" {
  cluster_id = var.pg_cluster_id
  name       = var.db_name
  owner      = var.pg_owner_name
  lc_collate = var.pg_lc_collate
  lc_type    = var.pg_lc_type
  extension {
    name    = var.pg_extension_1_name
    version = var.pg_extension_1_version
  }
  extension {
    name    = var.pg_extension_2_name
    version = var.pg_extension_2_version
  }
}