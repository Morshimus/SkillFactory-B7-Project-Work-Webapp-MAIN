locals {
  labels = {
    created_at = formatdate("DD-MM-YYYY-hh-mm", timestamp()),
    owner      = "morsh"
    group      = "security_group"
  }
}