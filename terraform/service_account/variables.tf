variable "account" {
  type        = string
  default     = "terraform"
}
variable "key_type" {
  type        = string
  default     = "TYPE_X509_PEM_FILE"
}
variable "gcp_project" {
  type        = string
  default     = ""
}
