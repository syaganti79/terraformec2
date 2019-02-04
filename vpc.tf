data "aws_availability_zones" "aaz" {

}

resource "aws_vpc" "vpc" {
      cidr_block = "10.0.0.0/16"

      tags {
      Name = "${var.stack}-vpc"
  }
}

resource "aws_internet_gateway" "igw" {

      vpc_id = "${aws_vpc.vpc.id}"  #this line is attaching IGW to the vpc
      tags {
      Name = "${var.stack}-igw"
   }
}

resource "aws_subnet" "public1" {

     vpc_id = "${aws_vpc.vpc.id}"
     cidr_block = "10.0.1.0/24"

     tags {
     Name = "${var.stack}-public-1"
     }
}

resource "aws_subnet" "public2" {

     vpc_id = "${aws_vpc.vpc.id}"
     cidr_block = "10.0.2.0/24"

     tags {
     Name = "${var.stack}-public-2"
     }
}

resource "aws_subnet" "private1" {

     vpc_id = "${aws_vpc.vpc.id}"
     cidr_block = "10.0.3.0/24"

     tags {
     Name = "${var.stack}-private-1"
     }
}

resource "aws_subnet" "private2" {

     vpc_id = "${aws_vpc.vpc.id}"
     cidr_block = "10.0.4.0/24"

     tags {
     Name = "${var.stack}-private-2"
     }
}

