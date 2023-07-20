terraform {
  required_version = "~>1.5.0"
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "~> 4.63"
    }
  }
  backend "gcs" {

  }
}
provider "google" {
  region = var.gcp_region
  zone   = var.gcp_zone
  project = var.gcp_project
}
module "firewall" {
  source = "./firewall"
}
module "instances" {
  source     = "./instance"
  depends_on = [module.firewall]
}
