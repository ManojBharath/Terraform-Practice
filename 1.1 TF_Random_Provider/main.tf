resource "random_password" "mypswd" {
  length = 16
}

resource "local_file" "petname" {
  filename = "abc.txt"
  content  = random_password.mypswd.bcrypt_hash
}

output "password" {
  value = local_file.petname.content
  sensitive = true
}
