provider "aws" {
  region  = "eu-west-2"
}

resource "aws_instance" "ec2"
 {
   ami = "ami-0b0a60c0a2bd40612"
   instance_type = "t2.micro"
   tags = {
        Name = "Ubuntu_ec2_instance"
         } 
  }

output "ip" {
 value = "${aws_instance.ec2.public_ip}"

      }
