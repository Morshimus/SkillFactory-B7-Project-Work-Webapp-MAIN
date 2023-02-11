resource "yandex_mdb_postgresql_user" "morsh_pg_db_user" {
  cluster_id = var.pg_cluster_id
  name       = var.db_user
  password   = var.db_user_password
  conn_limit = var.db_user_conn_limit
  settings = {
    default_transaction_isolation = var.db_user_default_transaction_isolation
    log_min_duration_statement    = var.db_user_log_min_duration_statement
  }
}



