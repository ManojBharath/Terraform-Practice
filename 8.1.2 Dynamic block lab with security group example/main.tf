variable "sg_inboundports" {
  type    = list(number)
  default = ["20", "40", "80", "443", "8080"]

}

resource "aws_instance" "demoserver" {
  ami           = data.aws_ami.amiid.id
  instance_type = "t2.micro"
  tags = {
    Name = "TestServer"
  }
  vpc_security_group_ids = [aws_security_group.demosg.id]
}

resource "aws_security_group" "demosg" {
  name        = "My-Custom-Security-Group"
  description = "MY-SG"

  dynamic "ingress" {
    for_each = var.sg_inboundports
    content {
      from_port   = ingress.value
      to_port     = ingress.value
      protocol    = "tcp"
      cidr_blocks = ["0.0.0.0/0"]
    }

  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]

  }

  tags = {
    Name = "My-Security_Group"
  }
}