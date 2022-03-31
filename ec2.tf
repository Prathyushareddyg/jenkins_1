provider "aws" {
    region = "ap-south-1"
    access_key = "AKIA4JRH66NEWADZ6WQ3"
    secret_key = "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"
}


resource "aws_instance" "instance_1" {
  ami           = "ami-04893cdb768d0f9ee" 
  instance_type = "t2.micro"
}
