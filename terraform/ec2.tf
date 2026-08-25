
provider "aws" {
  region = "us-east-1"
}
resource "aws_instance" "myec2" {
  ami = "var.myami"
  instance_type = "var.isntance_type"
  key_name = "id_rsa"
  vpc_security_group_ids = [ "sg-0e3db27617e12fa04" ]
  tags = {
    name = "myec2"
    env = "dev"
    Name = "spider"
  }
}

variable "myami" {
  default = "ami-0332d564d76dbd8d6"
  description = "this is us-east-1 ami"
}
variable "instance_type" {
  default = "t3.micro"
}