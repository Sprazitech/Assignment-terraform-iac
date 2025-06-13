variable "ami_id" {
  description =  "The AMI ID to use for the EC2 instance"
  type        = string
}

variable "instance_type" {
  description = "EC2 instance type"
  default     = "t2.micro"
}

variable "instance_name" {
  description = "Name tag for the EC2 instance"
  default     = "Terraform-Instance"
}

variable "s3_bucket_name" {
  description = "The name for the S3 bucket"
  type        = string
  
}

variable "environment" {
  description = "Deployment environment"
  default     = "Dev"
}
