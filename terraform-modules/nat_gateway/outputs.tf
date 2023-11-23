output "nat_gateway_id"{
  description = "Id of the NAT gateway created"
  value       = aws_nat_gateway.nat_gateway.id
}