resource "google_service_account" "default" {
  account_id   = var.account_id
  display_name = var.service_account_display_name
}

resource "google_container_cluster" "primary" {
  name               = var.cluster_name
  location           = var.location
  initial_node_count = var.initial_node_count


  node_config {
    disk_size_gb = var.disk_size_gb
  }
}
