provider "aws" {
    region = "ap-south-1"
}


resource "aws_instance" "instance_1" {
  ami           = "ami-04893cdb768d0f9ee" 
  instance_type = "t2.micro"
}
