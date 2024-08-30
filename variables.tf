variable "fqdn" {
  type        = string
  description = "The fully qualified domain name for the resources."
}

variable "namespace" {
  type        = string
  description = "The name prefix for all resources created."
}

variable "postgres_tier" {
  description = "The tier for the Postgres instance"
  type        = string
  default     = "db-custom-2-7680"
}

variable "postgres_version" {
  description = "The version for the Postgres instance"
  type        = string
  default     = "POSTGRES_16"
}

variable "redis_tier" {
  description = "The tier for the Redis instance"
  type        = string
  default     = "STANDARD_HA"
}

variable "redis_memory_size_gb" {
  description = "The memory size for the Redis instance"
  type        = number
  default     = 1
}

variable "redis_rdb_snapshot_period" {
  description = "The snapshot period for the Redis instance."
  type        = string
  default     = "ONE_HOUR"
}

variable "deletion_protection" {
  description = "Whether to enable deletion protection for the resources."
  type        = bool
  default     = true
}

variable "domains" {
  description = "The domains to use for the SSL certificate."
  type        = list(string)
}

variable "google_auth" {
  type = object({
    client_id     = string
    client_secret = string
  })
  description = "The Google OAuth client ID and secret."
}

variable "chart_version" {
  type    = string
  default = "0.1.17"
}
