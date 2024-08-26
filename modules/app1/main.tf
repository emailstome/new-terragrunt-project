provider "aws" {
  region = var.region_location
}

resource "aws_instance" "web" {
  subnet_id     = var.app_subnet_id
  ami           = var.image_type
  instance_type = var.instance_types
}