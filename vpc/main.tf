provider "aws" {
  region = "ap-south-1"
}

resource "aws_vpc" "myvpc" {
  cidr_block = var.vpc_cidr

  tags = merge(
    { Name = var.vpc_name },
    var.tags
  )
}

resource "aws_subnet" "pvtsubnet" {
  vpc_id                  = aws_vpc.myvpc.id
  cidr_block              = var.private_subnet_cidr
  availability_zone       = var.availability_zone
  map_public_ip_on_launch = false

  tags = merge(
    { Name = "pvtsubnet" },
    var.tags
  )
}

resource "aws_subnet" "pubsubnet" {
  vpc_id                  = aws_vpc.myvpc.id
  cidr_block              = var.public_subnet_cidr
  availability_zone       = var.availability_zone
  map_public_ip_on_launch = true

  tags = merge(
    { Name = "pubsubnet" },
    var.tags
  )
}

resource "aws_internet_gateway" "myigw" {
  vpc_id = aws_vpc.myvpc.id

  tags = merge(
    { Name = "myigw" },
    var.tags
  )
}

resource "aws_route_table" "public_rt" {
  vpc_id = aws_vpc.myvpc.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.myigw.id
  }

  tags = merge(
    { Name = "public-rt" },
    var.tags
  )
}

resource "aws_route_table_association" "public_assoc" {
  subnet_id      = aws_subnet.pubsubnet.id
  route_table_id = aws_route_table.public_rt.id
}


resource "aws_route_table" "private_rt" {
  vpc_id = aws_vpc.myvpc.id

  route {
    cidr_block     = "0.0.0.0/0"
    nat_gateway_id = aws_nat_gateway.natgw.id
  }

  tags = merge(
    { Name = "private-rt" },
    var.tags
  )
}

resource "aws_route_table_association" "private_assoc" {
  subnet_id      = aws_subnet.pvtsubnet.id
  route_table_id = aws_route_table.private_rt.id
}
