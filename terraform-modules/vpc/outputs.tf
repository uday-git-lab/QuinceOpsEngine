output "vpc_arn" {
  description = "ARN of the VPC"
  value       = aws_vpc.vpc.arn
}

output "vpc_id" {
  description = "The ID of VPC created"
  value       = aws_vpc.vpc.id
}

output "vpc_cidr_block" {
  value       = join("", aws_vpc.vpc.*.cidr_block)
  description = "The CIDR block of the VPC"
}