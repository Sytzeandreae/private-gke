resource "google_compute_network" "vpc" {
  name                    = "vpc1"
  auto_create_subnetworks = false
}

resource "google_compute_subnetwork" "subnet" {
  name          = "subnet1"
  region        = "asia-south2"
  network       = google_compute_network.vpc.name
  ip_cidr_range = "10.0.0.0/24"
}