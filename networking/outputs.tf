output "vpc_id" {
  value = module.vpc.vpc_id
}

output "subnets" {
  value = module.vpc.public_subnets
}

output "security_group_1_id" {
  value = aws_security_group.security_group.id
}