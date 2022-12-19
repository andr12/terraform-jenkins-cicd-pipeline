variable "project" {
  type        = string
  description = "Project for cluster"
}

variable "location" {
  type        = string
  description = "Region for cluster"
  default = "us-central1"
}

variable "name" {
  type        = string
  description = "Name of the cluster"
}

variable "service_account" {
  description = "A custom service account for the cluster nodes to run as"
  type        = string
  default     = ""
}

variable "machine_type" {
  description = "Default machine type"
}

variable "disk_size_gb" {
  type        = number
  default     = 50
  description = "Size of the disk attached to each node, specified in GB."
}

variable "disk_type" {
  type        = string
  default     = "pd-ssd"
  description = "Type of the disk attached to each node (e.g. 'pd-standard' or 'pd-ssd')"
}

variable "node_count" {
  type        = number
  default     = 3
  description = "Number of nodes per zone"
}

variable "cluster_tags" {
  type = list
  default     = []
  description = "Names of the cluster tags"
}

variable "enable_autopilot" {
  type        = bool
  default     = false
  description = "Enable Autopilot for this cluster"
}

variable "node_pool_name" {
  type        = string
  description = "Name of custom node pool"
}

variable "cluster_network" {
  type        = string
  description = "Network for cluster"
}

variable "cluster_subnet" {
  type        = string
  description = "Subnet for cluster"
}
