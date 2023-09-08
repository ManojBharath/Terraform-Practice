resource "aws_iam_user" "muserdemo" {
    for_each = var.musers
    name   = each.value  
}