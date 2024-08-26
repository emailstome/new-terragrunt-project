terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.64.0"
    }
  }

    backend "s3" {
    bucket = "my-new-terraform-bucket111"
    key    = "test/prod/us-east-1/network.tfstate"
    dynamodb_table = "mytfstatebucket2024"
    region = "us-east-1"
  } 
}
module "network" {
  source              = "../../../modules/network"
  vpc_cird            = var.vpc_cird
  public_subnet_cidr  = var.public_subnet_cidr
  private_subnet_cidr = var.private_subnet_cidr
  region_location     = var.region_location

}