variable "disk_type" {
  description = "Type of disk for db"
  type        = string
  default     = "PD_HDD"
}

variable "sql_tier" {
  description = "Tier of db"
  type        = string
  default     = "db-f1-micro"
}

variable "db_name" {
  description = "Name of db instance"
  type        = string
}

variable "db_version" {
  description = "Version of db"
  type        = string
  default     = "MYSQL_5_7"
}

variable "region" {
  description = "Region of db"
  type        = string
  default     = "us-central1"
}

variable "project" {
  description = "Project to create resources"
  type        = string
}

variable "disk_size" {
  description = "Size of db disk"
  type        = string
  default     = "15"
}

variable "del_protection" {
  description = "Protection of deleting"
  type        = bool
  default     = "false"
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
