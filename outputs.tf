output "instance_public_ip" {
  description = "The public IP of the EC2 instance"
  value       = aws_instance.example.public_ip
}

output "s3_bucket_url" {
  description = "The URL of the S3 bucket"
  value       = aws_s3_bucket.b.bucket_domain_name
}
