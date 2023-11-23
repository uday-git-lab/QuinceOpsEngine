variable "product_name" {
  type        = string
  description = "product_name (e.g. `Cred` or `Flex` or `pay`)"
}

variable "env" {
  type        = string
  description = "e.g. `prod`, `dev`, `env`)"
}

variable "name" {
  type        = string
  description = "Name  (e.g. `Cred` or `Flex`)"
}

variable "tags" {
  type        = map(string)
}

variable "vpc_id" {
  type        = string
}

variable "peer_vpc_id" {
  type        = string
}
