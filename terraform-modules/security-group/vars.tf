variable "ingress_rules" {
    type = list(object({
      from_port   = number
      to_port     = number
      type        = string
      protocol    = string
      description = string
      cidr_blocks = optional(list(string))
      ipv6_cidr_blocks = optional(list(string))
      prefix_list_ids = optional(list(string))
      security_groups = optional(list(string))
    }))
}

variable "egress_rules" {
    type = list(object({
      from_port   = number
      to_port     = number
      type        = string
      protocol    = string
      description = string
      cidr_blocks = optional(list(string))
      ipv6_cidr_blocks = optional(list(string))
      prefix_list_ids = optional(list(string))
      security_groups = optional(list(string))
    }))
}

variable "product_name" {
  type        = string
  description = "Namespace (e.g. `CRED` or `Flex` or `Pay`)"
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
  type = object({
    Creator = string    
  })
  description = "Tags for the inspector resource group"
}

variable "vpc_id" {
  type        = string
  description = "VPC ID"
}
