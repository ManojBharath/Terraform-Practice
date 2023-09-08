output "Text_file" {
  value = local_file.web-file.content
}

output "Script_file" {
  value = local_file.demo-file.content
}