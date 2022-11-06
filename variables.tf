variable "access_key" {
  description = "The AWS access key."
}

variable "secret_key" {
  description = "The AWS secret key."
}

variable "region" {
  description = "The AWS region to create resources in."
}

variable "availability_zone" {
  description = "The availability zone"
  default = "ap-south-1b"
}

variable "jenkins_name" {
  description = "The name of the Jenkins server."
  default = "jenkins"
}

variable "amis" {
  description = "AMI To create a EC2 instance"
  default = "ami-062df10d14676e201"
}

variable "instance_type" {
  default = "t2.micro"
}

variable "s3_bucket" {
  default = "jenkins"
  description = "S3 bucket where remote state and Jenkins data will be stored."
}

variable "environment_tag" {
  description = "Environment tag"
  default = "dev"
}

variable "subnet_public_id" {
  description = "VPC public subnet id"
  default = ""
}