provider "aws" {
  region = "eu-west-2"
}

resource "aws_instance" "ec2"
 {
  
   ami = "${data.aws_ami.rhel.id}"
   instance_type = "t2.micro"
   tags = {
       Name = "Redhat Linux"
         }
  }


data "aws_ami" "rhel" {
  most_recent = true
  owners = ["309956199498"] 
  filter {
    name   = "name"
    values = ["RHEL-6.9_HVM-20170424-x86_64-2-Hourly2-GP2*"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }

}

output "ami_id" {
value = "${data.aws_ami.rhel.id}"
}
output "aws_instance" {
value = "${aws_instance.ec2.public_ip}"
}
