resource "aws_instance" "myec2" {
  ami = "ami-0440d3b780d96b29d"
  subnet_id = var.subnet
  instance_type = "t2.micro"
  security_groups = [var.sg]
  tags = {
    name = "WebMaster"

  }

}

