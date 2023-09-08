resource "aws_instance" "testserver" {
  ami               = var.amiid
  instance_type     = var.typeofinstance
  availability_zone = var.zone
  tags              = var.commontags
  count             = var.ec2count

}