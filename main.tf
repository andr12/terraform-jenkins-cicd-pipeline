module "cluster" {
  source          = "./modules/gke"
  name            = var.cluster_name
  cluster_network = var.cluster_network
  cluster_subnet  = var.cluster_subnet
  project         = var.project_id
  location        = "us-central1"

  machine_type = "n1-standard-2"

  node_pool_name  = var.node_pool_name
  node_count      = var.nodes_number
  disk_size_gb    = "20"
  disk_type       = "pd-standard"
  service_account = var.service_account_email
  cluster_tags    = ["tag1", "tag2"]
}

module "sql" {
  source            = "./modules/sql"
  db_name           = var.sql_name
  project           = var.project_id
  DATABASE_NAME     = var.DATABASE_NAME
  DATABASE_USER     = var.DATABASE_USER
  DATABASE_PASSWORD = var.DATABASE_PASSWORD
}

module "docker_repo" {
  source        = "./modules/artifact_registry"
  repo_id       = var.docker_repo_id
  format        = "DOCKER"
}

module "java_repo" {
  source        = "./modules/artifact_registry"
  repo_id       = var.maven_repo_id
  format        = "MAVEN"
}

output "repo-id" {
  description = "Repository id."
  value       = google_artifact_registry_repository.my-repo.id
}

output "repo-name" {
  description = "Repository name."
  value       = google_artifact_registry_repository.my-repo.name
}

output "sql_connection_name" {
  description = "Connection name of the primary instance."
  value       = google_sql_database_instance_instance.connection_name


output "cluster_name" {
  description = "Cluster name."
  value       = google_container_cluster.cluster.name
}

output "cluster_id" {
  description = "Cluster ID."
  value       = google_container_cluster.cluster.id
}


output "cluster_location" {
  description = "Cluster location."
  value       = google_container_cluster.cluster.location
}