resource "aws_security_group" "security_group" {
  name = "SSH-SG"
  description = "Allow SSH inbound traffic"
  vpc_id = module.vpc.vpc_id

  ingress {
    from_port = 22
    protocol = "TCP"
    to_port = 22
    cidr_blocks = [var.ssh_allowed_host]
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