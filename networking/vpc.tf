module "vpc" {
  source = "terraform-aws-modules/vpc/aws"

  name = "VPC_JENKINS_CONFIG"
  cidr = var.vpc_cidr

  azs = [var.avaliability_zone_1]
  public_subnets = [var.public_subnet_1]

  enable_nat_gateway = var.enable_nat_gateway
  single_nat_gateway = var.single_nat_gateway

  enable_dns_hostnames = var.enable_dns_hostnames
  enable_dns_support   = var.enable_dns_support

  tags = {
    Purpose = "RampUp",
    Student = "Juan Jose Hoyos Urcue"
  }
}