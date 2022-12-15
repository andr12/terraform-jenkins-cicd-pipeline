provider "google" {
  project     = var.project_id
  region      = var.region
  credentials = "/home/jenkins/workspace/or2-msq-epm-cedu-t1iylu-05293d904b28.json"
}

provider "google-beta" {
  project     = var.project_id
  region      = var.region
  credentials = "/home/jenkins/workspace/or2-msq-epm-cedu-t1iylu-05293d904b28.json"
}

terraform {
  required_providers {
    google = {
      version = "> 3.83.0"
    }
    google-beta = {
      version = "> 3.83.0"
    }
  }
}