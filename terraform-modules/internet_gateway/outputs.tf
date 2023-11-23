output "internet_gateway_id"{
  description = "Id of the Internet gateway created"
  value       = aws_internet_gateway.internet_gateway.id
}