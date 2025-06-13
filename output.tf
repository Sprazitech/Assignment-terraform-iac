output "instance_id" {
  description = "EC2 instance ID"
  value       = aws_instance.WebInstance.id
}

output "bucket_name" {
  description = "S3 bucket name"
  value       = aws_s3_bucket.Test-bucket.bucket
}

output "security_group_id" {
  description = "Security group ID"
  value       = aws_security_group.Web_sg.id
}
