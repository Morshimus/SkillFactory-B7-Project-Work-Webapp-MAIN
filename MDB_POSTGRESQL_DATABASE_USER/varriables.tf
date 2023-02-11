
variable "service_account_key" {
  type    = string
  default = "./key.json"
}

variable "creation_zone_yandex" {
  type = string

}

variable "pg_cluster_id" {
  type = string
  description = "(Required) Id of cluster where create user"
}

variable "cloud_id" {
  type    = string
  default = "b1gm80drf2f2dk70jc3f"
}


variable "folder_id" {
  type    = string
  default = "b1g16ac5if9cnssnhfip"
}



variable "db_user" {
  type    = string
  default = "django"
  description = "Name of user in pg cluster"
}

variable "db_user_password" {
  type    = string
  description = "(Required) Password for db user. Sensetive"
}

variable "db_user_conn_limit" {
  type    = number
  default = 100
  description = "Maximum connection for user"
}


variable "db_user_log_min_duration_statement" {
  type    = number
  default = 5000
  description = "Sets the minimum execution time above which statements will be logged."
}


variable "db_user_default_transaction_isolation" {
  type    = string
  default = "read committed"
  description = <<EOF
 **Sets the transaction isolation level of each new transaction**
 Each SQL transaction has an isolation level, which can be either read uncommitted, 
 read committed, repeatable read, or serializable. 
 This parameter controls the default isolation level of each new transaction. 
 The default is read committed.
  EOF
}

