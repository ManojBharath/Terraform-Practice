resource "local_file" "web-file" {
  filename = "Hello.py"
  content  = "This is my first Python script!"

}

resource "local_file" "demo-file" {
  filename = "hello.txt"
  content  = "This is my first Python script!"
}

