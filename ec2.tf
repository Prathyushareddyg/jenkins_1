provider "aws" {
    region = "ap-south-1"
    access_key = "AKIA4JRH66NEWADZ6WQ3"
    secret_key = "Q2hYVdnhVV+7IS0f486Wd5D2ogoKXp1abuGGlEbs"
}

resource "aws_vpc" "vpc_1" {
  cidr_block = "192.16.0.0/22"
  tags = {
    Name = "tf-example1"
  }
}

resource "aws_subnet" "subnet_1" {
  vpc_id            = aws_vpc.vpc_1.id
  cidr_block        = "192.16.0.0/23"
  availability_zone = "us-east-1a"

  tags = {
    Name = "tf-example2"
  }
}

resource "aws_network_interface" "test" {
  subnet_id       = aws_subnet.subnet_1.id
}

resource "aws_instance" "instance_1" {
  ami           = "ami-04893cdb768d0f9ee" 
  instance_type = "t2.micro"
}