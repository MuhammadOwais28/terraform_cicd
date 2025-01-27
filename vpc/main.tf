resource "aws_vpc" "myvpc" {
  cidr_block = var.vpc_cidr
  enable_dns_hostnames = true
  enable_dns_support = true
  tags = {
    Name: "ProVPC"
  }
}

resource "aws_subnet" "mysubnet" {
  vpc_id = aws_vpc.myvpc.id
  availability_zone = var.az
  cidr_block = var.subnet_cidr
  depends_on = [ aws_vpc.myvpc ]
  map_public_ip_on_launch = true
  tags = {
    Name = "ProSubnet"
  }
}

resource "aws_security_group" "mysg" {

  vpc_id     = aws_vpc.myvpc.id
  description = "Enabling SSH, HTTP, HTTPS"


  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
    ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

}
