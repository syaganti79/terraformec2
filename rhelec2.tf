provider "aws" {
  region  = "eu-west-2"
}

variable "count" {
  default = 3
  }
resource "aws_instance" "ec2"
 {
  #count = 3
   count = "${var.count}"
   ami = "ami-027e6966"
   instance_type = "t2.micro"
   tags { Name="${format("Redhat_Linux-%01d",count.index+1)}" }
   #tags = {
   #     Name = "Redhat Linux"
   #      }
  }

output "ip" {
 value = "${aws_instance.ec2.*.public_ip}"

      }
