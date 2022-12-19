output "repo-id" {
  description = "Repository id."
  value       = google_artifact_registry_repository.my-repo.id
}

output "repo-name" {
  description = "Repository name."
  value       = google_artifact_registry_repository.my-repo.name
} 