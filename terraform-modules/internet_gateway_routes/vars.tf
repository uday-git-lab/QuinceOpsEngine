variable "route_table_id" {
  type        = string
  description = ""
}

variable "destination_cidr_block" {
  type        = string
  default     = "0.0.0.0/0"
  description = ""
}

variable "internet_gateway_id"{
  type        = string
  description = "Internet Gateway id"
  default     = ""
}