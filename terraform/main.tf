terraform {
    backend "s3" {}
}

provider "aws" {
    region = var.aws_region
}

resource "aws_s3_bucket" "example" {
    bucket = "my-aws-terraform-demo-example-jp"
}
