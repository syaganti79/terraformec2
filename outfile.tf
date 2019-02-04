
/*output "ami_id" {
value = "${data.aws_ami.rhel.id}"
}*/

output "ip" {
value = "${aws_instance.ec2.public_ip}"

}

output "aaz" {
value = "${data.aws_availability_zones.aaz.*.names}"
}


