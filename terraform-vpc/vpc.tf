resource "aws" "vpc-roboshop" {
    cidr_block = "10.0.0.0/16"
    tags = { 
        Name = "VPC-ROBOSHOP"
        Environment = "DEV"
        Terraform = "True"
    }
  
}