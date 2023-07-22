variable "gcp_project" {
  type        = string
  default     = "pojet-ecole"
  description = "The GCP project to deploy the runner into."
}
variable "gcp_zone" {
  type        = string
  default     = "us-east1-b"
  description = "The GCP zone to deploy the runner into."
}

variable "gcp_region" {
  type        = string
  default     = "us-east1"
  description = "The GCP region to deploy the runner into."
}
variable "vpc_name" {
  type        = string
  default     = "test-network"
  description = "Le réseau vpc"
}
variable "subnet_name" {
  type        = string
  default     = "test-subnetwork"
  description = "Le sous-réseau vpc"
}