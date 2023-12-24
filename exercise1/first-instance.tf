provider "aws" {
  region = "us-east-1"
  #   access_key = ""
  #   secret_key = ""	
}
resource "aws_instance" "intro"{
  ami = "ami-06aa3f7caf3a30282"
  instance_type = "t2.micro"
  availability_zone = "us-east-1a"
  key_name = "dove-key"
  vpc_security_group_ids = ["sg-0d155d28d4f0629d0"]
  tags = {
    Name = "Dove-Instance"
    Project = "Dove"
  }
}
