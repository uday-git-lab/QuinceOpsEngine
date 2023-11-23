output "elastic_ip" {
  description = "ARN of the VPC"
  value       = aws_eip.elastic_ip.id
}
