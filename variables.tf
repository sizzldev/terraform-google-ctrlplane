variable "namespace" {
  type        = string
  description = "The name prefix for all resources created."
}

variable "postgres_tier" {
  description = "The tier for the Postgres instance"
  type        = string
  default     = "db-f1-micro"
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

variable "delete_protection" {
  description = "Whether to enable deletion protection for the resources."
  type        = bool
  default     = true
}

