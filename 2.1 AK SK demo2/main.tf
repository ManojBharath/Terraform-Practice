resource "aws_instance" "demoec2" {
  count             = 3
  ami               = "ami-008b85aa3ff5c1b02"
  instance_type     = "t2.micro"
  availability_zone = "ap-south-1b"
  key_name          = "demoEleven"
  tags = {
    Name = "Jump-server - ${count.index + 1}"

  }
}