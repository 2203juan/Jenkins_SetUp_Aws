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

variable "ssh_port" {
  description = "SSH PORT"
  default = 22 
}

variable "jenkins_port" {
  description = "Jenkins Port"
  default = 8080
}

variable "enable_nat_gateway" {
  description = "enable_nat_gateway"
  default = false
}

variable "single_nat_gateway" {
  description = "single_nat_gateway"
  default = false
  
}

variable "enable_dns_hostnames" {
  description = "enable_dns_hostnames"
  default = true
}

variable "enable_dns_support" {
  description = "enable_dns_support"
  default = true
}