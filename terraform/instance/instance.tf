resource "google_compute_instance" "computer_engine" {
for_each = var.instance_name
  name =  "instance-${each.value}"
  machine_type = var.machine_type
  boot_disk {
    initialize_params {
      image = var.image_disk
      labels = {
        my_label = "value"
      }
    }
  }

   network_interface {
    network = var.vpc_name
    subnetwork = var.subnet_name

    access_config {
      // Ephemeral public IP
    }
  }

}