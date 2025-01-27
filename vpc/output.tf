output "subnet_id" {
  value = aws_subnet.mysubnet.id

}

output "sg_id" {
  value = aws_security_group.mysg.id
}
