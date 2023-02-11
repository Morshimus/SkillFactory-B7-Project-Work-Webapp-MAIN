
variable "service_account_key" {
  type    = string
  default = "./key.json"
}

variable "creation_zone_yandex" {
  type = string

}

variable "network_id" {
  type        = string
  description = "Id of created yc network"
}

variable "cloud_id" {
  type    = string
  default = "b1gm80drf2f2dk70jc3f"
}


variable "folder_id" {
  type    = string
  default = "b1g16ac5if9cnssnhfip"
}



variable "vpc_subnet_id" {
  type = string
}


variable "environment" {
  type        = string
  default     = "PRESTABLE"
  description = "Mark for cluster user. Possible valuse PRESTABLE/PRODUCTION"
}


variable "preset" {
  type        = string
  default     = "s2.micro"
  description = <<EOF
  **In Yandex Cloud there are exist diferrent presets.**
 +-------------+--------------------------------+-------+----------+
 |     ID      |            ZONE IDS            | CORES |  MEMORY  |
 +-------------+--------------------------------+-------+----------+
 | b2.nano     | ru-central1-a, ru-central1-b,  |     2 | 2.0 GB   |
 |             | ru-central1-c                  |       |          |
 | b2.micro    | ru-central1-a, ru-central1-b,  |     2 | 2.0 GB   |
 |             | ru-central1-c                  |       |          |
 | b2.medium   | ru-central1-a, ru-central1-b,  |     2 | 4.0 GB   |
 |             | ru-central1-c                  |       |          |
 | b1.nano     | ru-central1-a, ru-central1-b,  |     2 | 2.0 GB   |
 |             | ru-central1-c                  |       |          |
 | b1.micro    | ru-central1-a, ru-central1-b,  |     2 | 2.0 GB   |
 |             | ru-central1-c                  |       |          |
 | b1.medium   | ru-central1-a, ru-central1-b,  |     2 | 4.0 GB   |
 |             | ru-central1-c                  |       |          |
 | c3-c2-m4    | ru-central1-a, ru-central1-b,  |     2 | 4.0 GB   |
 |             | ru-central1-c                  |       |          |
 | c3-c4-m8    | ru-central1-a, ru-central1-b,  |     4 | 8.0 GB   |
 |             | ru-central1-c                  |       |          |
 | c3-c8-m16   | ru-central1-a, ru-central1-b,  |     8 | 16.0 GB  |
 |             | ru-central1-c                  |       |          |
 | c3-c12-m24  | ru-central1-a, ru-central1-b,  |    12 | 24.0 GB  |
 |             | ru-central1-c                  |       |          |
 | c3-c16-m32  | ru-central1-a, ru-central1-b,  |    16 | 32.0 GB  |
 |             | ru-central1-c                  |       |          |
 | c3-c24-m48  | ru-central1-a, ru-central1-b,  |    24 | 48.0 GB  |
 |             | ru-central1-c                  |       |          |
 | c3-c32-m64  | ru-central1-a, ru-central1-b,  |    32 | 64.0 GB  |
 |             | ru-central1-c                  |       |          |
 | c3-c40-m80  | ru-central1-a, ru-central1-b,  |    40 | 80.0 GB  |
 |             | ru-central1-c                  |       |          |
 | c3-c48-m96  | ru-central1-a, ru-central1-b,  |    48 | 96.0 GB  |
 |             | ru-central1-c                  |       |          |
 | c3-c64-m128 | ru-central1-a, ru-central1-b,  |    64 | 128.0 GB |
 |             | ru-central1-c                  |       |          |
 | c3-c80-m160 | ru-central1-a, ru-central1-b,  |    80 | 160.0 GB |
 |             | ru-central1-c                  |       |          |
 | c3-c96-m192 | ru-central1-a, ru-central1-b,  |    96 | 192.0 GB |
 |             | ru-central1-c                  |       |          |
 | m3-c2-m16   | ru-central1-a, ru-central1-b,  |     2 | 16.0 GB  |
 |             | ru-central1-c                  |       |          |
 | m3-c4-m32   | ru-central1-a, ru-central1-b,  |     4 | 32.0 GB  |
 |             | ru-central1-c                  |       |          |
 | m3-c6-m48   | ru-central1-a, ru-central1-b,  |     6 | 48.0 GB  |
 |             | ru-central1-c                  |       |          |
 | m3-c8-m64   | ru-central1-a, ru-central1-b,  |     8 | 64.0 GB  |
 |             | ru-central1-c                  |       |          |
 | m3-c12-m96  | ru-central1-a, ru-central1-b,  |    12 | 96.0 GB  |
 |             | ru-central1-c                  |       |          |
 | m3-c16-m128 | ru-central1-a, ru-central1-b,  |    16 | 128.0 GB |
 |             | ru-central1-c                  |       |          |
 | m3-c24-m192 | ru-central1-a, ru-central1-b   |    24 | 192.0 GB |
 | m3-c32-m256 | ru-central1-a, ru-central1-b   |    32 | 256.0 GB |
 | m3-c40-m320 | ru-central1-a, ru-central1-b,  |    40 | 320.0 GB |
 |             | ru-central1-c                  |       |          |
 | m3-c48-m384 | ru-central1-a, ru-central1-b   |    48 | 384.0 GB |
 | m3-c56-m448 | ru-central1-a, ru-central1-b   |    56 | 448.0 GB |
 | m3-c64-m512 | ru-central1-a, ru-central1-b   |    64 | 512.0 GB |
 | m3-c80-m640 | ru-central1-a, ru-central1-b   |    80 | 640.0 GB |
 | m2.micro    | ru-central1-a, ru-central1-b,  |     2 | 16.0 GB  |
 |             | ru-central1-c                  |       |          |
 | m2.small    | ru-central1-a, ru-central1-b,  |     4 | 32.0 GB  |
 |             | ru-central1-c                  |       |          |
 | m2.medium   | ru-central1-a, ru-central1-b,  |     6 | 48.0 GB  |
 |             | ru-central1-c                  |       |          |
 | m2.large    | ru-central1-a, ru-central1-b,  |     8 | 64.0 GB  |
 |             | ru-central1-c                  |       |          |
 | m2.xlarge   | ru-central1-a, ru-central1-b,  |    12 | 96.0 GB  |
 |             | ru-central1-c                  |       |          |
 | m2.2xlarge  | ru-central1-a, ru-central1-b,  |    16 | 128.0 GB |
 |             | ru-central1-c                  |       |          |
 | m2.3xlarge  | ru-central1-a, ru-central1-b,  |    24 | 192.0 GB |
 |             | ru-central1-c                  |       |          |
 | m2.4xlarge  | ru-central1-a, ru-central1-b,  |    32 | 256.0 GB |
 |             | ru-central1-c                  |       |          |
 | m2.5xlarge  | ru-central1-a, ru-central1-b,  |    40 | 320.0 GB |
 |             | ru-central1-c                  |       |          |
 | m2.6xlarge  | ru-central1-a, ru-central1-b,  |    48 | 384.0 GB |
 |             | ru-central1-c                  |       |          |
 | m2.7xlarge  | ru-central1-a, ru-central1-b,  |    56 | 448.0 GB |
 |             | ru-central1-c                  |       |          |
 | m2.8xlarge  | ru-central1-a, ru-central1-b,  |    64 | 512.0 GB |
 |             | ru-central1-c                  |       |          |
 | s3-c2-m8    | ru-central1-a, ru-central1-b,  |     2 | 8.0 GB   |
 |             | ru-central1-c                  |       |          |
 | s3-c4-m16   | ru-central1-a, ru-central1-b,  |     4 | 16.0 GB  |
 |             | ru-central1-c                  |       |          |
 | s3-c8-m32   | ru-central1-a, ru-central1-b,  |     8 | 32.0 GB  |
 |             | ru-central1-c                  |       |          |
 | s3-c12-m48  | ru-central1-a, ru-central1-b,  |    12 | 48.0 GB  |
 |             | ru-central1-c                  |       |          |
 | s3-c16-m64  | ru-central1-a, ru-central1-b,  |    16 | 64.0 GB  |
 |             | ru-central1-c                  |       |          |
 | s3-c24-m96  | ru-central1-a, ru-central1-b,  |    24 | 96.0 GB  |
 |             | ru-central1-c                  |       |          |
 | s3-c32-m128 | ru-central1-a, ru-central1-b,  |    32 | 128.0 GB |
 |             | ru-central1-c                  |       |          |
 | s3-c40-m160 | ru-central1-a, ru-central1-b,  |    40 | 160.0 GB |
 |             | ru-central1-c                  |       |          |
 | s3-c48-m192 | ru-central1-a, ru-central1-b,  |    48 | 192.0 GB |
 |             | ru-central1-c                  |       |          |
 | s3-c64-m256 | ru-central1-a, ru-central1-b,  |    64 | 256.0 GB |
 |             | ru-central1-c                  |       |          |
 | s3-c80-m320 | ru-central1-a, ru-central1-b,  |    80 | 320.0 GB |
 |             | ru-central1-c                  |       |          |
 | s3-c96-m576 | ru-central1-a, ru-central1-b   |    96 | 576.0 GB |
 | s2.micro    | ru-central1-a, ru-central1-b,  |     2 | 8.0 GB   |
 |             | ru-central1-c                  |       |          |
 | s2.small    | ru-central1-a, ru-central1-b,  |     4 | 16.0 GB  |
 |             | ru-central1-c                  |       |          |
 | s2.medium   | ru-central1-a, ru-central1-b,  |     8 | 32.0 GB  |
 |             | ru-central1-c                  |       |          |
 | s2.large    | ru-central1-a, ru-central1-b,  |    12 | 48.0 GB  |
 |             | ru-central1-c                  |       |          |
 | s2.xlarge   | ru-central1-a, ru-central1-b,  |    16 | 64.0 GB  |
 |             | ru-central1-c                  |       |          |
 | s2.2xlarge  | ru-central1-a, ru-central1-b,  |    24 | 96.0 GB  |
 |             | ru-central1-c                  |       |          |
 | s2.3xlarge  | ru-central1-a, ru-central1-b,  |    32 | 128.0 GB |
 |             | ru-central1-c                  |       |          |
 | s2.4xlarge  | ru-central1-a, ru-central1-b,  |    40 | 160.0 GB |
 |             | ru-central1-c                  |       |          |
 | s2.5xlarge  | ru-central1-a, ru-central1-b,  |    48 | 192.0 GB |
 |             | ru-central1-c                  |       |          |
 | s2.6xlarge  | ru-central1-a, ru-central1-b,  |    64 | 256.0 GB |
 |             | ru-central1-c                  |       |          |
 | s1.micro    | ru-central1-a, ru-central1-b,  |     2 | 8.0 GB   |
 |             | ru-central1-c                  |       |          |
 | s1.small    | ru-central1-a, ru-central1-b,  |     4 | 16.0 GB  |
 |             | ru-central1-c                  |       |          |
 | s1.medium   | ru-central1-a, ru-central1-b,  |     8 | 32.0 GB  |
 |             | ru-central1-c                  |       |          |
 | s1.large    | ru-central1-a, ru-central1-b,  |    16 | 64.0 GB  |
 |             | ru-central1-c                  |       |          |
 | s1.xlarge   | ru-central1-a, ru-central1-b,  |    32 | 128.0 GB |
 |             | ru-central1-c                  |       |          |
 +-------------+--------------------------------+-------+----------+

 EOF
}


variable "name" {
  type        = string
  default     = "morsh-pg-cluster"
  description = "Name of cluster."
}


variable "disk_type" {
  type        = string
  default     = "network-ssd"
  description = "Type of disk of host in pg cluster"
}

variable "disk_size" {
  type        = number
  default     = 16
  description = "Disk size of pg cluster host in GB"
}


variable "maintenance_type" {
  type        = string
  default     = "WEEKLY"
  description = <<EOF
  Type of maintenance window. Can be either ANYTIME or WEEKLY. 
  A day and hour of window need to be specified with weekly window.
  EOF
}

variable "maintenance_day" {
  type        = string
  default     = "SAT"
  description = <<EOF
  Day of the week (in DDD format). 
  Allowed values: "MON", "TUE", "WED", "THU", "FRI", "SAT", "SUN"
  EOF
}


variable "maintenance_hour" {
  type        = number
  default     = 12
  description = <<EOF
  Hour of the day in UTC (in HH format). 
  Allowed value is between 1 and 24.
  EOF
}


variable "pg_version" {
  type        = number
  default     = 15
  description = <<EOF
  Version of the PostgreSQL cluster. 
  (allowed versions are: 10, 10-1c, 11, 11-1c, 12, 12-1c, 13, 13-1c, 14, 14-1c,**15**)
  EOF
}


variable "postgresql_conf_max_conn" {
  type        = number
  default     = 395
  description = <<EOF
  Sets the maximum number of concurrent connections.
  EOF
}

variable "postgresql_conf_parallel_hash" {
  type        = bool
  default     = true
  description = <<EOF
  Enables or disables the query planner's use of hash-join plan types with parallel hash. 
  Has no effect if hash-join plans are not also enabled. The default is true.
  EOF
}

variable "postgresql_conf_autovacuum_vacuum_scale_factor" {
  type        = number
  default     = 0.34
  description = <<EOF
  Number of tuple updates or deletes prior to vacuum as a fraction of reltuples.
  EOF
}

variable "postgresql_conf_default_transaction_isolation" {
  type        = string
  default     = "TRANSACTION_ISOLATION_READ_COMMITTED"
  description = <<EOF
  Sets the transaction isolation level of each new transaction.
  EOF
}


variable "postgresql_conf_shared_preload_libraries" {
  type        = string
  default     = "SHARED_PRELOAD_LIBRARIES_AUTO_EXPLAIN"
  description = <<EOF
  Lists shared libraries to preload into server.
  **Allowed values:** 
  SHARED_PRELOAD_LIBRARIES_AUTO_EXPLAIN, 
  SHARED_PRELOAD_LIBRARIES_PGAUDIT, 
  SHARED_PRELOAD_LIBRARIES_PG_CRON, 
  SHARED_PRELOAD_LIBRARIES_PG_PREWARM, 
  SHARED_PRELOAD_LIBRARIES_PG_QUALSTATS, 
  SHARED_PRELOAD_LIBRARIES_TIMESCALEDB
  EOF
}