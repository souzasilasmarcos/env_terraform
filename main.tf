provider "aws" {
  region = "sa-east-1"
  shared_config_files      = ["/root/.aws/cronfig"]
  shared_credentials_files = ["/root/.aws/credentials"]
  profile                  = "default"
}

resource "aws_s3_bucket" "aws-codedeploy-sa-east-1-002" {
 
  tags = {
    Name        = "My IaC"
    Environment = "Dev"
    Managedby   = "Terraform"
    Owner       = "Lasmarco_dev"
    UpdatedAt   = "2021-09-11"
  }
}
