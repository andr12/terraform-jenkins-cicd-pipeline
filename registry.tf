module "docker_repo" {
  source        = "./modules/artifact_registry"
  repo_id       = var.docker_repo_id
  location      = var.location
  format        = "DOCKER"
}

module "java_repo" {
  source        = "./modules/artifact_registry"
  repo_id       = var.maven_repo_id
  location      = var.location
  format        = "MAVEN"
}
