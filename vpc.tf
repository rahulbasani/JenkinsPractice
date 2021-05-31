provider "aws"{
  region = "ap-southeast-1"
}
terraform{
  backend "s3" {
    bucket = "bucketforstatefiles"
    key = "terraform.tfstatefiles"
    region = "ap-southeast-1"
  }
}
resource "aws_vpc" "main" {
  cidr_block       = "10.0.0.0/16"
  instance_tenancy = "default"

  tags = {
    Name = "main"
  }
}
