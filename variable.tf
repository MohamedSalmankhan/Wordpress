variable "instance_ami" {
  default = "ami-0080e4c5bc078760e"
}
variable "key_name" {
}
variable "subnet_id" {
  default = "subnet-48050911"
}
variable "sg_id" {
  default = "sg-faac1c9c"
}
variable "db_name" {
}
variable "username" {
}
variable "password" {
}
variable "db_subnet" {
  type = "list"
  default = ["subnet-7822c80e","subnet-0cbc1c31"]
}
variable "db_sg" {
  default = "sg-08605275a29dab0fe"
}
