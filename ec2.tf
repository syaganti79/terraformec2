#this is to create basic EC2 instance
provider "aws" {
  region  = "${var.aws_reg}"
}

resource "aws_instance" "ec2"
 {
   ami = "ami-027e6966"
   instance_type = "t2.micro"
   tags = {
        Name = "RHEL_ec2_instance"
         } 
  }

/*output "ip" {
 value = "${aws_instance.ec2.public_ip}"

      }*/
