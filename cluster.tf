module "cluster" {
  source          = "./modules/gke"
  name            = var.cluster_name
  cluster_network = var.cluster_network
  cluster_subnet  = var.cluster_subnet
  project         = var.project
  location        = "us-central1"

  machine_type = "n1-standard-2"

  node_pool_name  = var.node_pool_name
  node_count      = var.nodes_number
  disk_size_gb    = "20"
  disk_type       = "pd-standard"
  service_account = var.service_account_email
  cluster_tags    = ["tag1", "tag2"]
}
