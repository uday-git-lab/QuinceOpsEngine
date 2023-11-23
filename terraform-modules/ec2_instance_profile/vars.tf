variable "product_name" {
  type        = string
  description = "product_name (e.g. `falcon` or `magicleap`)"
}

variable "env" {
  type        = string
  description = "env (e.g. `prod`, `dev`, `staging`, `infra`)"
}

variable "name" {
  type        = string
  description = "Name  (e.g. `lambda` or `cluster`)"
}

variable "tags" {
  type        = map(string)
  default     = {}
}

variable "role_name" {
  type        = string
  description = "EC2 instance role name"
}

variable "resource_version" {
  type = string
  default = "1"
  description = "Version of the resource."
}