provider "aws" {
    region = "ap-south-1"
}


resource "aws_instance" "instance_1" {
  ami           = "ami-0c02fb55956c7d316" 
  instance_type = "t2.micro"
}
