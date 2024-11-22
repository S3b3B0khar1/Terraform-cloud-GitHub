terraform {
    required_version = "~> 1.9.2" // added latest version
    required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.77.0"
     }
    }
   }

provider "aws" {
        region = "us-east-1" 
        #profile = "default"
	}

resource "aws_instance" "Raminfra" {
	ami = "ami-012967cc5a8c9f891" 
	instance_type = "t2.micro"
}
