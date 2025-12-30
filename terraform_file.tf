# terraform {
#   backend "s3" {
#     bucket = "terra-pract"
#     region = "ap-south-1"
#     key = "tfstate"
#   }
# }

# provider "aws" {
#   region = "ap-south-1"
# }

# data "aws_security_group" "mysg" {
#   id = "sg-0f56e48b0c4f8a957"
# }

# resource "aws_instance" "myinstance" {

#   ami           = var.ami_id
#   instance_type = var.instance_type

#   vpc_security_group_ids = [ data.aws_security_group.mysg.id ]

#   key_name = var.key_name

#   availability_zone = "ap-south-1a"

#   tags = {
#     Name = "myinstance"
#   }
# }

# variable "vpc_id" {
#     default = "vpc-070d186a0639513c6"
# }

# variable "ami_id" {
#     default = "ami-02b8269d5e85954ef"
# }
# variable "instance_type" {
#     default = "t3.micro"
# }
# variable "key_name" {
#     default = "mumbai-key"
# }

# output "instance_id" {
#   value = aws_instance.myinstance.id
# }

# output "public_ip" {
#   value = aws_instance.myinstance.public_ip
# }





