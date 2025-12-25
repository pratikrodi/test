provider "aws" {

2

region "us-east-1"

3

}

4

2

5

le

6

md

7

U

8

9

10

resource "aws_instance" "myinstance" T

ami "ami-0c398cb65a93047f2"

instance_type = "t3.micro"

vpc_security_group_ids= ["sg-0f7b2e9cf35734448"]

key_name "id_rsa"

availability_zone "us-east-1a"

11

tags = {

12

name

"myinstance"

13

}
}