# Provider region

variable "provider_region" {
  description = "Provider Region"
  default = "ca-central-1"
}

# VPC Variables

variable "vpc_cidr" {
  description = "VPC cidr"
}

variable "avaliability_zone_1" {
  description = "Avaliability Zone 1"
}

variable "public_subnet_1" {
  description = "Public Subnet 1"
}

variable "ssh_allowed_host" {
  description = "SSH ALLOWED HOST"
}
