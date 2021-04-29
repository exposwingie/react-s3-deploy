provider "aws" {
  region  = var.region
}

# FOR REMOTE TF-STATE saving
# terraform {
#   backend "s3" {
#     bucket  = "your bucket name for tfstate"
#     region  = "us-east-1"
#     key     = "terraform/terraform.tfstate"
#     encrypt = true

#     dynamodb_table = "your dynamo_db_table_name"
#   }
# }

module "staging" {
  source="./environments/staging"
  bucket_name = var.bucket_name
}

# module "production" { # UNCOMMENT FOR PRODUCTION
#   bucket_name = var.bucket_name
# }
