
variable "vpc_cird" {
  description = "vpc cird block"
  #default     = "10.100.0.0/16"
}

variable "public_subnet_cidr" {
  description = "public subnet cidr"
  # default = "10.100.1.0/24"
}

variable "private_subnet_cidr" {
  description = "private subnet cidr"
  default     = "10.100.3.0/24"
}

variable "region_location" {
  description = "selected region"  
}