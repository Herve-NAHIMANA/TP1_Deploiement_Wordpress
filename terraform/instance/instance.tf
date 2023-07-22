resource "google_compute_instance" "computer_engine" {
for_each = var.instance_name
  name =  "instance-${each.value}"
  machine_type = "e2-medium"
  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-11"
      labels = {
        my_label = "value"
      }
    }
  }

   network_interface {
    network = "test-network"
    subnetwork = "test-subnetwork"

    access_config {
      // Ephemeral public IP
    }
  }

}