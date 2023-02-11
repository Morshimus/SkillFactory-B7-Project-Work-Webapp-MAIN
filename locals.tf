locals {

  ansible_template = templatefile(
    "${path.module}/templates/ansible_inventory_template.tpl",
    {
      user     = var.useros,
      ip       = module.morsh_instance_ya_1.external_ip_address_morsh_server,
      hostname = module.morsh_instance_ya_1.hostname_morsh_server
      db_name  = module.morsh_pg_cluster_db_ya_1.morsh_yc_pg_db_name
      db_user  = module.morsh_pg_cluster_user_ya_1.morsh_yc_pg_user_name
      db_fqdn  = module.morsh_pg_cluster_ya_1.morsh_fqdn_master_pg_cluster
    }
  )

  loc_path = "${path.module}/"
}