variable "gcp_project" {
  type        = string
  default     = "pojet-ecole"
  description = "The GCP project to deploy the runner into."
}
variable "gcp_zone" {
  type        = string
  default     = "europe-west2-c"
  description = "The GCP zone to deploy the runner into."
}

variable "gcp_region" {
  type        = string
  default     = "europe-west2"
  description = "The GCP region to deploy the runner into."
}
