provider "aws" {
  region = var.provider_region
}

terraform {
  backend "s3" {
    bucket = "terraform-remote-state-juanhoyosc"
    key = "layer1/infrastructure.tfstate"
    region = "ca-central-1"
  }
}

