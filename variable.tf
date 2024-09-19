variable "aws_region" {
  default = "us-west-2"
}

variable "aws_availability_zone" {
  default = "us-west-2a"
}

variable "ami_id" {
  default = "ami-0c55b159cbfafe1f0" # Example AMI ID (Amazon Linux 2)
}

variable "instance_type" {
  default = "t2.micro"
}

variable "s3_bucket_name" {
  default = "my-terraform-bucket-12345"  # Make sure this is globally unique
}
