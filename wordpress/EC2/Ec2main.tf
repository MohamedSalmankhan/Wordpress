provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "EC2_wordpress" {
  ami = "${var.instance_ami}"
  instance_type = "t2.micro"
  key_name = "${var.key_name}"
  subnet_id = "${var.subnet_id}"
  vpc_security_group_ids = ["${var.sg_id}"]
  user_data = "${file("wordpress/EC2/userdata.sh")}"
  associate_public_ip_address = "true"

  tags {
    Name = "terra_wp_ec2_instance"
  }
}