module "sql" {
  source            = "./modules/sql"
  db_name           = var.sql_name
  project           = var.project
  DATABASE_NAME     = DATABASE_NAME
  DATABASE_USER     = DATABASE_USER
  DATABASE_PASSWORD = DATABASE_PASSWORD
}
