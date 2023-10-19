provider "aws" {
region = "ap-southeast-2"
access_key = "AKIAXFOFGNIUJAO5KKVE"
secret_key = "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"
}

resource "aws_instance" "key" {
ami = "ami-023e1b810cda5ce69"
instance_type = "t2.micro"
key_name = "oct19"
vpc_security_group_ids = [aws_security_group.demo-sg.id]
tags = {
Name = "project_instance"
}
}
