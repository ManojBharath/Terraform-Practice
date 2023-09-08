resource "local_file" "namdemofile" {
  filename = "index.html"
  content  = <<-EOF
    <html>
     <head>
        <h1> Hello Terraform Associates!!!</h1>
      </head>
      <body>
        <p>Welcome to TRFM course. Lets build the Dynmaic Infra using Hashicorp Terraform!</p> 
      </body>
    </html>
    EOF
}
resource "local_file" "second_file" {
  filename = "html.txt"
  content  = local_file.namdemofile.content
}

output "second_file_op" {
    value = local_file.second_file.content
  
}