remote_state {
  backend = "s3"
  config = {
    bucket = "my-new-terraform-bucket111"
    key    = "test/dev/us-east-1/network.tfstate"
        dynamodb_table = "mytfstatebucket2024"
    region = "us-east-1"
  }
}

generate "backend" {
  path      = "backend.tf"
  if_exists = "overwrite_terragrunt"
  contents = <<EOF
terraform {
  backend "s3" {
    bucket         = "my-new-terraform-bucket111"
    key            = "${path_relative_to_include()}/terraform.tfstate"
    region         = "us-east-1"
    encrypt        = true
    dynamodb_table = "mytfstatebucket2024"
  }
}
EOF
}