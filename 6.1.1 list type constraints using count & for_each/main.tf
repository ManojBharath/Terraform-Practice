resource "aws_iam_user" "myuser" {
  
  count = length(var.lnames)
  name  = var.lnames[count.index]

}
########################################

resource "aws_iam_user" "myuser1" {
    for_each = toset(var.fnames)
    name = each.value
 


}