output "subnet_id" {
  description = "The ID of the subnet created"
  value       = aws_subnet.subnet.id
}

output "subnet_arn" {
  description = "The ARN of the subnet created"
  value       = aws_subnet.subnet.arn
}