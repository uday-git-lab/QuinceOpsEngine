output "security_group_id" {
    value = aws_security_group.security_group.id
}

output "security_group_name" {
    value = "${lookup(aws_security_group.security_group.tags_all, "Name")}"
}