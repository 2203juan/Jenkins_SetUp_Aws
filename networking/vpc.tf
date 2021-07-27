module "vpc" {
  source = "terraform-aws-modules/vpc/aws"

  name = "VPC_JENKINS_CONFIG"
  cidr = var.vpc_cidr

  azs = [var.avaliability_zone_1]
  public_subnets = [var.public_subnet_1]

  enable_nat_gateway = false
  single_nat_gateway = false

  enable_dns_hostnames = true
  enable_dns_support   = true

  tags = {
    Purpose = "RampUp",
    Student = "Juan Jose Hoyos Urcue"
  }
}