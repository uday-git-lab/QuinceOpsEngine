variable "product_name" {
  type        = string
  description = "product_name (e.g. `Cred` or `Flex`)"
}

variable "env" {
  type        = string
  description = "e.g. `prod`, `dev`, `env`)"
}

variable "name" {
  type        = string
  description = "Name  (e.g. `Cred` or `Flex` or `pay` )"
}

variable "tags" {
  type        = map(string)
}

variable "availability_zone" {
  type        = string
  description = "Availability zone"
}

variable "vpc_id" {
  type        = string
  description = "VPC ID"
}

variable "cidr_block" {
  type        = string
  description = "CIDR block"
}

variable "map_public_ip_on_launch" {
  type        = string
  description = "Public IP on launch"
}
