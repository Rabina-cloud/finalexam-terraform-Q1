variable "region" {

  type        = string
  description = "Enter Your AWS Region"
  default     = "ca-central-1"

}

variable "ami" {

  type        = string
  description = "Enter Your EC2 AMI ID"
  default     = "ami-03814457ed908d8f6"

}

variable "instance_type" {

  type        = string
  description = "Enter Your EC2 Instance Type"
  default     = "t2.micro"

}

variable "vpc_cidr" {
  type        = string
  description = "Enter Your VPC CIDR Range"
  default     = "10.0.0.0/16"
}

variable "subnet1_cidr" {
  type        = string
  description = "Enter Your subnet1 Range"
  default     = "10.0.1.0/24"
}

variable "AZ1" {
  type        = string
  description = "Enter Your AZ1 Value"
  default     = "ca-central-1a"
}

variable "AZ2" {
  type        = string
  description = "Enter Your AZ2 Value"
  default     = "ca-central-1b"
}

variable "subnet2_cidr" {
  type        = string
  description = "Enter Your subnet2 Range"
  default     = "10.0.2.0/24"
}

variable "s3_bucket_name" {
  type        = string
  description = "Enter Your S3 Bucket Name"
  default     = "finalexam-251015"
}