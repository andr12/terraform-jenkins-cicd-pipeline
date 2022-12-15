# Project wide variables
project    = "or2-msq-epm-cedu-t1iylu"
project_id = "or2-msq-epm-cedu-t1iylu"
region     = "us-central1"

# GKE variables
cluster_name          = "petclinic-cluster"
cluster_location      = "us-central1-a"
cluster_network       = "network-epm-cedu"
cluster_subnet        = "europe-west1-b-network-epm-cedu-subnet"
image                 = "COS_CONTAINERD"
node_pool_name        = "custom-pool"
nodes_number          = "3"
machine_type          = "n1-standard-2"
service_account_email = "mentorship-infra-sa@or2-msq-epm-cedu-t1iylu.iam.gserviceaccount.com"

# SQL variables
sql_name          = "my-instance"
DATABASE_NAME     = DATABASE_NAME
DATABASE_USER     = DATABASE_USER
DATABASE_PASSWORD = DATABASE_PASSWORD

# Docker repo variables
docker_repo_id = "petclinic-repo-halka"

# Maven repo variables
maven_repo_id = "petclinic-repo-halka-jar"
