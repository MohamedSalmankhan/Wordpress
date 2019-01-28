terraform {
  backend "s3" {
    bucket = "tf-task-salman-ebiz"
    key    = "tf-backend"
    region = "us-east-1"
  }
}

module "EC2" {
  source = "wordpress/EC2"
  instance_ami = "${var.instance_ami}"
  key_name = "${var.key_name}"
  sg_id = "${var.sg_id}"
  subnet_id = "${var.subnet_id}"
}
module "ELB" {
  source = "wordpress/ELB"
  subnet_id = "${var.subnet_id}"
  sg_id = "${var.sg_id}"
  instance_id = "${module.EC2.instance_id}"
}
module "RDS" {
  source = "wordpress/RDS"
  db_name = "${var.db_name}"
  username = "${var.username}"
  password = "${var.password}"
  db_sg = "${var.db_sg}"
  db_subnet-1 = "${var.db_subnet-1}"
  db_subnet-2 = "${var.db_subnet-2}"
}
