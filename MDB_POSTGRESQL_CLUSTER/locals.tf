locals {
  labels = {
  #  created_at = formatdate("DD-MM-YYYY-hh-mm", timestamp()),
    owner      = "morsh"
    #    group      = var.group
  }

  postgresql_config = {
      max_connections                   = var.postgresql_conf_max_conn
      enable_parallel_hash              = var.postgresql_conf_parallel_hash
      autovacuum_vacuum_scale_factor    = var.postgresql_conf_autovacuum_vacuum_scale_factor
      default_transaction_isolation     = var.postgresql_conf_default_transaction_isolation
      shared_preload_libraries          = var.postgresql_conf_shared_preload_libraries
  }
}


