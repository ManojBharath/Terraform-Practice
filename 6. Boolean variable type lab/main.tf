resource "aws_instance" "demoec2" {
  ami           = var.amiid
  instance_type = "t2.micro"
  count         = local.count
}

locals {
  count = var.create_instance ? 1 : 0
}