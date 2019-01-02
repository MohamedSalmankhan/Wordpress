provider "aws" {
  region = "us-east-1"
}

resource "aws_db_instance" "rds_wordpress" {
  engine = "${var.rds_engine}"
  engine_version = "${var.rds_engine_version}"
  instance_class = "${var.ins_class_type}"
  allocated_storage = "${var.rds_storage}"
  name = "${var.db_name}"
  username = "${var.username}"
  password = "${var.password}"
  db_subnet_group_name = "${aws_db_subnet_group.rds_subnet.id}"
  vpc_security_group_ids = ["${var.db_sg}"]
  backup_retention_period = 0
  publicly_accessible = "true"
  skip_final_snapshot = "true"
  tags {
    Name = "terra_wp_rds"
  }
}
resource "aws_db_subnet_group" "rds_subnet" {
  subnet_ids = ["${var.db_subnet-1}","${var.db_subnet-2}"]
}