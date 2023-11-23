output "ec2_instance_public_ip" {
    value = aws_instance.ec2.public_ip
}

output "ec2_instance_private_ip" {
    value = aws_instance.ec2.private_ip
}

output "ec2_instance_id" {
    value = aws_instance.ec2.id
}

output "ec2_instance_private_dns" {
    value = aws_instance.ec2.private_dns
}

output "ec2_instance_ebs_id" {
    value = aws_instance.ec2.root_block_device.0.volume_id
}

output "ec2_instance_name" {
    value = "${lookup(aws_instance.ec2.tags_all, "Name")}"
}

output "ec2_instance_public_dns" {
    value = aws_instance.ec2.public_dns
}
