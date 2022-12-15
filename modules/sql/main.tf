resource "google_sql_database_instance" "instance" {
  name                = var.db_name
  database_version    = var.db_version
  region              = var.region
  project             = var.project
  deletion_protection = var.del_protection
  settings {
    tier      = var.sql_tier
    disk_size = var.disk_size
    disk_type = var.disk_type
  }
}

resource "google_sql_database" "database" {
  name     = var.DATABASE_NAME
  instance = google_sql_database_instance.instance.name
  depends_on = [google_sql_database_instance.instance]
}

resource "google_sql_user" "users" {
  name     = var.DATABASE_USER
  instance = google_sql_database_instance.instance.name
  password = var.DATABASE_PASSWORD
  depends_on = [google_sql_database_instance.instance]
}
