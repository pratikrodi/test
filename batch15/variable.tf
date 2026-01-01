variable "region" {
  default = "ap-south-1"
}
variable "project" {
  default = "marks"
}
variable "vpc_cidr" {
  default = "10.0.0.0/16"
}
variable "private_cidr" {
  default = "10.0.0.0/24"
}
variable "public_cidr" {
  default = "10.0.1.0/24"
}
variable "environment" {
  default = "devops"
}
variable "instance_count" {
  default = "2"
}
variable "image_id" {
  default = "ami-02b8269d5e85954ef"
}
variable "key_pair" {
  default = "mumbai-key.pem"
}
variable "instance_type" {
  default = "t3.micro"
}
