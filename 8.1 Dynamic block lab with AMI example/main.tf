resource "aws_instance" "demoserver" {
  ami           = data.aws_ami.amiid.id
  instance_type = "t2.micro"
  tags = {
    Name = "TestServer"
  }

}

