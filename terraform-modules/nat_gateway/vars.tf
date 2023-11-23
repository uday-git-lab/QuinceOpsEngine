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
  description = "Name  (e.g. `Cred` or `Flex`)"
}

variable "tags" {
  type        = map(string)
}

variable "public_subnet" {
  type        = string
  description = "Public Sunbet"
}
