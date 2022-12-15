variable "location" {
  type        = string
  description = "Location of registry"
  default = "us-central1"
}

variable "repo_id" {
  type        = string
  description = "ID of repo"
}

variable "format" {
  type        = string
  description = "Format of repo"
}
