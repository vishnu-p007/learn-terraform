# Copyright (c) HashiCorp, Inc.
# SPDX-License-Identifier: MPL-2.0

/*
provider "aws" {
  region = var.region
}


data "aws_ami" "ubuntu" {
  most_recent = true

  filter {
    name   = "name"
    values = ["ubuntu/images/hvm-ssd/ubuntu-focal-20.04-amd64-server-*"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }

  owners = ["099720109477"] # Canonical
}
*/

provider "aws" {
  region  = "us-west-2"
}

/*
resource "aws_instance" "app_server" {
  ami           = "ami-830c94e3"
  instance_type = "t2.micro"

  tags = {
    Name = "ExampleAppServerInstance"
  }
}
*/

resource "aws_instance" "app_server2" {
  ami           = var.ami
  instance_type = "t2.micro"

  tags = {
    Name = "ExampleAppServerInstance2"
  }
}
