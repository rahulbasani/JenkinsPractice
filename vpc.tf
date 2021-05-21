provider "aws"{
  region = "ap-southeast-1"
}
resource "aws_vpc" "demovpc" {
    cidr_block = "192.168.0.0/24"
    instance_tenancy = "default"

    tags = {
      Name = "demovpc"
    }
}
