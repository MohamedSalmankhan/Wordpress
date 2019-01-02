provider "aws" {
  region = "us-east-1"
}

resource "aws_elb" "elb_wordpress" {
  subnets         = ["${var.subnet_id}"]
  security_groups = ["${var.sg_id}"]
  cross_zone_load_balancing = "true"
  connection_draining = "false"
  connection_draining_timeout = 300

  listener {
    instance_port     = "80"
    instance_protocol = "HTTP"
    lb_port           = "80"
    lb_protocol       = "HTTP"
    }

  health_check {
    target              = "HTTP:80/healthy.html"
    interval            = 6
    healthy_threshold   = 2
    unhealthy_threshold = 5
    timeout             = 4
    }
  tags {
    Name = "terra_wp_elb"
  }
}
resource "aws_elb_attachment" "attach_elb_instance" {
  elb = "${aws_elb.elb_wordpress.id}"
  instance = "${var.instance_id}"
}
