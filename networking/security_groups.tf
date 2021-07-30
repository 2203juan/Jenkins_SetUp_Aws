resource "aws_security_group" "security_group" {
  name = "SSH-SG"
  description = "Allow SSH inbound traffic"
  vpc_id = module.vpc.vpc_id

  ingress {
    from_port = var.ssh_port
    protocol = "TCP"
    to_port = var.ssh_port
    cidr_blocks = [var.ssh_allowed_host]
  }

  ingress {
    from_port = var.jenkins_port
    protocol = "TCP"
    to_port = var.jenkins_port
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port = 0
    protocol = "-1"
    to_port = 0
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Purpose = "RampUp",
    Student = "Juan Jose Hoyos Urcue"
  }
}