resource "aws_s3_bucket" "s3demo" {
  for_each = {
    "ballayyababu"  = "callmemavayya"
    "sampoorneshbabu" = "sada-mee-sevaku-baanisa"
    "uppalbalu"  = "hifriendsgoodbyefriends"
  }
  bucket = "${each.key}-${each.value}"

  tags = {
    Name        = "${each.value}"
    Environment = "${each.key}"
  }
  depends_on = [aws_instance.demoserver]
}


resource "aws_instance" "demoserver" {
  for_each      = toset(["ami-06f621d90fa29f6d0", "ami-008b85aa3ff5c1b02", "ami-0f5ee92e2d63afc18"])
  ami           = each.value
  instance_type = "t2.micro"

  tags = {
    Name = "${each.value} - server"
  }
}

