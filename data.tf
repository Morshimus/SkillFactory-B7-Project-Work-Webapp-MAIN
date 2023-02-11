data "ansiblevault_path" "db_key" {
  path = "${path.module}/secrets"
  key = "pg_user_db_password"
}