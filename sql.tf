module "sql" {
  source            = "./modules/sql"
  db_name           = var.sql_name
  project           = var.project_id
  DATABASE_NAME     = var.DATABASE_NAME
  DATABASE_USER     = var.DATABASE_USER
  DATABASE_PASSWORD = var.DATABASE_PASSWORD
}
