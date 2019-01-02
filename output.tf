output "instance-id" {
  value = "${module.EC2.instance_id}"
}
output "elb-dns" {
  value = "${module.ELB.elb_dns}"
}
output "rds-endpoint" {
  value = "${module.RDS.rds_endpoint}"
}