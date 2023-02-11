
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

variable "network_id" {
  type        = string
  description = "YC network id for creation"
}

variable "sec_name" {
  type        = string
  default     = "morsh-pg-sec"
  description = "Name of security Group"
}


variable "sec_description" {
  type        = string
  default     = "This group allows inbound/outbound access to PGSQL cluster from local vpc netowrk only"
  description = "Description of security Group"
}


variable "ingress1_protocol" {
  type        = string
  default     = "TCP"
  description = "Rules for inbound protocol type"
}

variable "ingress1_description" {
  type    = string
  default = "Rules for inbound connections for PGSQL cluster"

}

variable "ingress1_cidr_blocks" {
  type        = list(string)
  description = "(Required)Scope which allowed for inbound connections"
}


variable "ingress1_port" {
  type        = string
  default     = "6432"
  description = "Port allowed inbound connection"
}


variable "egress1_protocol" {
  type        = string
  default     = "ANY"
  description = "Rules for outbound protocol type"
}


variable "egress1_description" {
  type    = string
  default = "Rules for outbound connections for PGSQL cluster"
}


variable "egress1_cidr_blocks" {
  type        = list(string)
  description = "(Required)Scope which allowed for outbound connections"
}

