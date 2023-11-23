variable "route_table_id" {
  type        = string
  description = ""
}

variable "nat_gateway_id" {
  type        = string
  description = ""
  default     = ""
}

variable "destination_cidr_block" {
  type        = string
  default     = "0.0.0.0/0"
  description = ""
}