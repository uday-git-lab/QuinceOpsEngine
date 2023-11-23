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
  description = "Name  (e.g. `Flex` or `cred`)"
}

variable "tags" {
  type        = map(string)
}

variable "vpc_id" {
  type        = string
  description = "VPC ID"
}
