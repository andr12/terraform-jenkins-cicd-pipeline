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