resource "yandex_mdb_postgresql_cluster" "morsh_pg_cluster" {
  name        = var.name
  environment = var.environment
  network_id  = var.network_id

  config {
    postgresql_config = local.postgresql_config
    version = var.pg_version
    resources {
      resource_preset_id = var.preset
      disk_type_id       = var.disk_type
      disk_size          = var.disk_size
      
    }

  }

  maintenance_window {
    type = var.maintenance_type
    day  = var.maintenance_day
    hour = var.maintenance_hour
  }

  host {
    zone      = var.creation_zone_yandex
    subnet_id = var.vpc_subnet_id
  }
}