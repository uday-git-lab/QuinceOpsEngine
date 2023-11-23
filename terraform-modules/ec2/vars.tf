variable "product_name" {
  type        = string
  description = "Namespace (e.g. `Falcon` or `Magicleap`)"
}

variable "env" {
  type        = string
  description = "e.g. `prod`, `dev`, `stage`)"
}

variable "name" {
  type        = string
  description = "Name of the resource"
}

variable "tags" {
  type        = map(string)
  description = "Tags for the resource"
}

variable "ami" {
  type = string
  description = "The AMI ID"
}

variable "instance_type" {
  type = string
  description = "Type of EC2 Instance"
}

variable "availability_zone" {
  type = string
  description = "Availability Zone"
}

variable "iam_instance_profile" {
  type = string
  description = "IAM Instance Profile"
}

variable "key_name" {
  type = string
  description = "Key name to be taken"
}

variable "vpc_security_group_ids" {
  type = list(string)
  description = "vpc_security_group_ids"
}

variable "subnet_id" {
  type        = string
  description = "Name of the tag with which subnet will be fetched for the security group"
}

variable "volume_size" {
  type        = number
  description = "Value of the tag with which subnet will be fetched for the security group"
}

variable "associate_public_ip_address" {
  type        = string
  description = "Whether to associate a public IP address with an instance in a VPC."
}

variable "delete_on_termination" {
  type        = string
  description = "Whether to associate a public IP address with an instance in a VPC."
}

variable "iops" {
  type        = string
  description = "Whether to associate a public IP address with an instance in a VPC."
}

variable "volume_type" {
  type        = string
  description = "Whether to associate a public IP address with an instance in a VPC."
}

variable "encrypted" {
  type        = bool
  description = "Set EBS encryption true of false. Default is true"
  default     = true
}

variable "user_data_path" {
  type        = string
  description = "User data to provide when launching the instance."
}

variable "variable_data" {
  type        = map(string)
  description = "User data variable to be passed to user data template file"	
  default     = {}
} 
