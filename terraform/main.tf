resource "aws_instance" "controlplane" {
  ami           = data.aws_ami.ubuntu.id
  instance_type = var.instance_type
  count         = 1
  key_name      = var.ansible_ssh_public_key_file

  tags = {
    Name = "Controlplane-${count.index}"
  }
}

resource "aws_instance" "worker" {
  ami           = data.aws_ami.ubuntu.id
  instance_type = var.instance_type
  count         = 1
  key_name      = var.ansible_ssh_public_key_file

  tags = {
    Name = "Worker-${count.index}"
  }
}
