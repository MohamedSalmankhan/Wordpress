output "elb_dns" {
  value = "${aws_elb.elb_wordpress.dns_name}"
}