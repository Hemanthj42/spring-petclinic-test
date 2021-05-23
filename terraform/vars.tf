variable "AWS_REGION" {
  default = "ap-south-1"
}

variable "AWSACCESSKEY" {
  default = "" 
}

variable "AWSSECRETKEY" {
default = "" 
}

variable "AMIS" {
  default = "ami-010aff33ed5991201"
  }

variable "PATH_TO_PRIVATE_KEY" {
  default = "mykey"
}

variable "PATH_TO_PUBLIC_KEY" {
  default = "mykey.pub"
}


variable "INSTANCE_USERNAME" {
  default = "ec2-user"
}
