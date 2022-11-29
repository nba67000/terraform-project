# configure aws provider
provider "aws" {
  region = "eu-west-3"
  profile = "terraform-user"
}

# stores the terraform state file in s3
terraform {
  backend "s3" {
    bucket = "nba67000-cloud-traning-terraform-remote-state"
    key    = "terraform.tfstate.dev"
    region = "eu-west-3"
    profile = "terraform-user"
  }
}