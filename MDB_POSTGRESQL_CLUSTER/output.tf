output "morsh_yc_id_pg_cluster" {
  value = yandex_mdb_postgresql_cluster.morsh_pg_cluster.id
}


output "morsh_fqdn_master_pg_cluster" {
  value = yandex_mdb_postgresql_cluster.morsh_pg_cluster.host[0].fqdn
}

