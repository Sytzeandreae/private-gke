resource "google_compute_network" "vpc" {
  project                 = var.project_id
  name                    = "vpc1"
  auto_create_subnetworks = false
}

resource "google_compute_subnetwork" "subnet" {
  name          = "subnet1"
  region        = "europe-west4"
  network       = google_compute_network.vpc.name
  ip_cidr_range = "10.0.0.0/24"
}