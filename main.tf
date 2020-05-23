variable "region" {}
variable "project_name" {}

provider "aws" {
  region = var.region
}

terraform {
  backend "s3" {
    encrypt = true
  }
}

module "s3" {
  source = "./modules/s3"

  project_name = var.project_name
}