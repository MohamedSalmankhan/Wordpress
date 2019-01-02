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
variable "db_subnet-1" {
  default = "subnet-608bc52a"
}
variable "db_subnet-2" {
  default = "subnet-738bf87c"
}
variable "db_sg" {
  default = "sg-0002f611426c2b3a6"
}