module "sql" {
  source            = "./modules/sql"
  db_name           = var.sql_name
  project           = var.project_id
}
