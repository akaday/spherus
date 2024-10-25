provider "aws" {
  region = var.aws_region
}

resource "aws_instance" "example" {
  ami           = var.ami_id
  instance_type = var.instance_type

  tags = {
    Name = "ExampleInstance"
  }
}

variable "aws_region" {
  description = "The AWS region to deploy resources in"
  type        = string
  default     = "us-west-2"
}

variable "ami_id" {
  description = "The AMI ID for the instance"
  type        = string
}

variable "instance_type" {
  description = "The instance type for the instance"
  type        = string
  default     = "t2.micro"
}

output "instance_id" {
  description = "The ID of the instance"
  value       = aws_instance.example.id
}

output "instance_public_ip" {
  description = "The public IP of the instance"
  value       = aws_instance.example.public_ip
}
