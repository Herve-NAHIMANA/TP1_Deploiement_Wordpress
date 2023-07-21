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