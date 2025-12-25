provider "aws" {
region "us-east-1"
}

resource "aws_instance" "myinstance" {

ami = "ami-0c398cb65a93047f2"

instance_type = "t3.micro"

vpc_security_group_ids = ["sg-0f7b2e9cf35734448"]

key_name = "id_rsa"

availability_zone = "us-east-1a"

tags = {

name = "myinstance"

}
}
