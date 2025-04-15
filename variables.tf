variable "vpc_name" {
  description = "Value of the Name tag for the VPC"
  type        = string
  default     = "ExampleVPC"
}

variable "subnet_name" {
  description = "Value of the Name tag for the Subnet"
  type        = string
  default     = "ExampleSubnet"
}

variable "instance_name" {
  description = "Value of the Name tag for the EC2 instance"
  type        = string
  default     = "ExampleInstance"
}

variable "bucket_name" {
  description = "Value of the Name tag for the S3 bucket"
  type        = string
  default     = "ExampleBucket"
}
