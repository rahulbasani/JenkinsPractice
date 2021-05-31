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

resource "aws_subnet" "main_subnet"{
  vpc_id = aws_vpc.main.id
  cidr_block="10.0.10.0/24"
  
  tags ={
    Name = "main_subnet"
  }
}
