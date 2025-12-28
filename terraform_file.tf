terraform {
  backend "s3" {
    bucket = "terra-pract"
    region = "ap-south-1"
    key = "tfstate"
  }
}

provider "aws" {
  region = "ap-south-1"
}

resource "aws_instance" "myinstance" {

  ami           = var.ami_id
  instance_type = var.instance_type

  vpc_security_group_ids = ["sg-0e096bbd6bd8b792a"]

  key_name = var.key_name

  availability_zone = "ap-south-1a"

  tags = {
    Name = "myinstance"
  }
}

variable "ami_id" {
    default = "ami-02b8269d5e85954ef"
}
variable "instance_type" {
    default = "t3.micro"
}
variable "key_name" {
    default = "mumbai-key"
}