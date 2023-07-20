resource "google_compute_firewall" "default" {
  name    = "test-firewall"
  network = google_compute_network.custom-test.id
  allow {
    protocol = "tcp"
    ports    = ["80","22","3306"]
  }
  source_ranges = ["0.0.0.0/0"]
}
resource "google_compute_subnetwork" "Test" {
  name          = "test-subnetwork"
  ip_cidr_range = "10.2.0.0/16"
  region        = "europe-west2"
  network       = google_compute_network.custom-test.id
}
resource "google_compute_network" "custom-test" {
  name                    = "test-network"
  auto_create_subnetworks = false
}
