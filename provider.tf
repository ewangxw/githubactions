provider "aws" {
  region = "ap-southeast-2"
}

terraform {
  backend "remote" {
    hostname = "app.terraform.io"
    organization = "ewanstudy"

    workspaces {
      name = "tfc-gitactions"
    }
  }
}