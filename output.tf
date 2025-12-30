output "instance_id" {
  value = aws_instance.myinstance.id
}

output "public_ip" {
  value = aws_instance.myinstance.public_ip
}