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

variable "acl" {
  type        = string
  description = "Todo "
  default     = "private"
}

variable "enable_versioning" {
  type        = string
  default     = "false"
  description = "Versioning enable true or false"
}

variable "sse_algorithm" {
  type        = string
  default     = "AES256"
  description = "Server side encryption algorithm i.e AES256, aws:kms"
}

variable "acceleration_status" {
  type        = string
  default     = "Suspended"
  description = "Enabel acceleration status."
}
