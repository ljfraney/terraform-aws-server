
variable "ami" {
  description = "amazon server image"
  default     = ""
}

variable "subnet_id" {
  description = "Subnet Id"
}

variable "vpc_security_group_ids" {
  description = "Security Groups"
  type        = list(any)
}

variable "key_name" {
  description = "SSH Key"
  default     = ""
}

variable "identity" {
  description = "Server Name"
}

variable "environment" {
  description = "Deployment Environment"
  default     = "development"
}

variable "height" {
  type        = string
  default     = "400"
  description = "(Optional) Image height in pixels. Defaults to 400"
}

variable "width" {
  type        = string
  default     = "600"
  description = "(Optional) Image width in pixels. Defaults to 600"
}

variable "placeholder" {
  type        = string
  default     = "placedog.net"
  description = "(Optional) App URL. Defaults to placedog.net."
}

