resource "aws_instance" "ec2_instance" {
  subnet_id = data.terraform_remote_state.network_configuration.outputs.subnets[0]
  ami = var.ec2_ami
  key_name = var.key_pair_name
  instance_type = var.ec2_instance_type
  security_groups = [data.terraform_remote_state.network_configuration.outputs.security_group_1_id]

  tags = {
    Name = "Jenkins_Server",
    Purpose = "RampUp",
    Student = "Juan Jose Hoyos Urcue"
  }
}