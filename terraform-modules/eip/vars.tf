variable "instance_id" {
  type        = string
}

variable "product_name" {
  type        = string
  description = "Namespace (e.g. `Cred` or `Flex`)"
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
