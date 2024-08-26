variable "subnet_id" {

}

variable "instance_count" {
  description = "number of ec2 instances"
  type        = number
  default     = 1
}

variable "region_location" {

}

variable "instance_types" {
  description = "instance type"
  default     = "t2.micro"
}

variable "image_type" {
  description = "image type"
  default     = "ami-0e86e20dae9224db8"

}

variable "app_subnet_id" {
  default = "subnet for web server"
  type    = string
}