
output "cluster_ca_certificate" {
  value     = google_container_cluster.this.master_auth.0.cluster_ca_certificate
  sensitive = true
}

output "cluster_endpoint" {
  value = google_container_cluster.this.endpoint
}