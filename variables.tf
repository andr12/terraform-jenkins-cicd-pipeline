
variable "project" {
  type        = string
  description = "Project"
}

variable "project_id" {
  type        = string
  description = "Project"
}

variable "cluster_subnet" {
  type        = string
  description = "Subnet for GKE"
}

variable "cluster_network" {
  type        = string
  description = "Network for GKE"
}

variable "node_pool_name" {
  type        = string
  description = "Name for GKE custom node pool"
}

variable "cluster_name" {
  type        = string
  description = "Name for GKE cluster"
}

variable "nodes_number" {
  type        = number
  description = "Number of nodes in custom GKE node pool"
}

variable "service_account_email" {
  type        = string
  description = "Service account"
}

variable "region" {
  type        = string
  description = "Region"
}

variable "sql_name" {
  type        = string
  description = "Name for SQL database"
}

variable "DATABASE_NAME" {
  description = "Database name"
  type        = string
}

variable "DATABASE_USER" {
  description = "Database username"
  type        = string
}

variable "DATABASE_PASSWORD" {
  description = "Database user password"
  type        = string
}

variable "docker_repo_id" {
  type        = string
  description = "Docker artifact registry repository name"
}

variable "maven_repo_id" {
  type        = string
  description = "Maven artifact registry repository name"
}
