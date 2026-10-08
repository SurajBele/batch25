variable "myami" {
  default = "ami-0332d564d76dbd8d6"
  description = "this is us-east-1 ami"
}
variable "instance_type" {
  default = "t3.micro"
}
variable "key_name" {
    default = "id_rsa"
}
variable "mysg" {
    default = "sg-0e3db27617e12fa04"
}
variable "project_name" {
    default = "myproject"
}
variable "region" {
  default = "us-east-1"
}