output "sql_connection_name" {
  description = "Connection name of the primary instance."
  value       = google_sql_database_instance.instance.connection_name
}