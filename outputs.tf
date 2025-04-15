output "vpc_id" {
  description = "ID of the VPC"
  value       = aws_vpc.example.id
}

output "subnet_id" {
  description = "ID of the subnet"
  value       = aws_subnet.example.id
}

output "instance_id" {
  description = "ID of the EC2 instance"
  value       = aws_instance.example.id
}

output "instance_public_ip" {
  description = "Public IP address of the EC2 instance"
  value       = aws_instance.example.public_ip
}

output "bucket_id" {
  description = "ID of the S3 bucket"
  value       = aws_s3_bucket.example.id
}

output "bucket_domain" {
  description = "Domain name of the S3 bucket"
  value       = aws_s3_bucket.example.bucket_domain_name
}
