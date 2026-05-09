resource "aws_instance" "app_server" {
  ami                    = "ami-0a936bb624678fd88"
  instance_type          = var.instance_type
  subnet_id              = var.subnet_id
  key_name               = var.key_name
  vpc_security_group_ids = [var.security_group_id]

  user_data = file("${path.module}/../../userdata.sh")

  tags = {
    Name = "terraform-app-server"
  }
}
