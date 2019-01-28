variable "rds_engine" {
  default = "mysql"
}
variable "rds_engine_version" {
  default = "5.7.23"
}
variable "ins_class_type" {
  default = "db.t2.micro"
}
variable "rds_storage" {
  default = 10
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
}
