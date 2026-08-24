terraform {
  backend "s3" {
    bucket = "batch25-123"
    region = "us-east-1"
    key = "tfstate-file"

  }
}
provider "aws" {
  region = "us-east-1"
}
resource "aws_instance" "myec2" {
  ami = "ami-0332d564d76dbd8d6"
  instance_type = "t3.micro"
  key_name = "id_rsa"
  vpc_security_group_ids = [ "sg-0e3db27617e12fa04" ]
  tags = {
    name = "myec2"
    env = "dev"
    Name = "spider"
  }
}