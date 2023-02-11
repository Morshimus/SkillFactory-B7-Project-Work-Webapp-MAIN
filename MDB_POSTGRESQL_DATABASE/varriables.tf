
variable "service_account_key" {
  type    = string
  default = "./key.json"
}

variable "creation_zone_yandex" {
  type = string

}


variable "cloud_id" {
  type    = string
  default = "b1gm80drf2f2dk70jc3f"
}


variable "folder_id" {
  type    = string
  default = "b1g16ac5if9cnssnhfip"
}



variable "pg_cluster_id" {
  type    = string
  description = "Id of cluster where to add Database"
}


variable "db_name" {
  type    = string
  default = "django"
  description = "Name of DB, which you want to add to pg cluster"
}

variable "pg_owner_name" {
  type    = string
  description = "Name of user in PG cluster whom will be owner of DB"
}


variable "pg_lc_collate" {
  type    = string
  default = "en_US.UTF-8"
  description = "Collate Settings for Database selections.Shows the collation order locale"
}


variable "pg_lc_type" {
  type    = string
  default = "en_US.UTF-8"
  description = "Locale support in DB"
}


variable "pg_extension_1_name" {
  type = string
  default = "uuid-ossp"
  description = "Extension to use with this db"
}


variable "pg_extension_1_version" {
  type    = number
  default = 1.1
  description = "Extension version to use with this db"
}


variable "pg_extension_2_name" {
  type    = string
  default = "xml2"
  description = "Extension to use with this db"
}

variable "pg_extension_2_version" {
  type    = number
  default = 1.1
  description = "Extension version to use with this db"
}

