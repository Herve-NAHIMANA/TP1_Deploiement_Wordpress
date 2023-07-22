terraform {
  required_version = "~>1.5.0"
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "~> 4.63"
    }
  }
backend "local" {
    path = "./etat.tfstate"
  }
}
provider "google" {
  region = var.gcp_region
  zone   = var.gcp_zone
  project = var.gcp_project
}

module "service_account"{
  source = "./service_account"
  gcp_project = var.gcp_project
}
module "vpc" {
  source = "./vpc"
  depends_on = [module.service_account]
}
module "firewall" {
  source = "./firewall"
  depends_on = [module.vpc]
}
module "instances" {
  source     = "./instance"
  depends_on = [module.firewall]
}
