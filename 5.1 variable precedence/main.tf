resource "aws_instance" "testdb" {
  ami               = var.amiid
  instance_type     = var.instancetype
  availability_zone = var.az

}