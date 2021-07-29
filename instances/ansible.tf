data "template_file" "ansible_host" {
  template  = templatefile("../templates/ansible.tpl",{dns_name = aws_instance.ec2_instance.public_ip})
}


resource "local_file" "save_host" {
  content = data.template_file.ansible_host.rendered
  filename = "../ansible/hosts/hosts"
}