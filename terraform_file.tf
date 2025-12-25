provider "aws" {
  region = "ap-south-1"
}

resource "aws_instance" "myinstance" {

  ami           = "ami-02b8269d5e85954ef"
  instance_type = "t3.micro"

  vpc_security_group_ids = ["sg-0e096bbd6bd8b792a"]

  key_name = "mumbai-key"

  availability_zone = "us-east-1a"

  tags = {
    Name = "myinstance"
  }
}
