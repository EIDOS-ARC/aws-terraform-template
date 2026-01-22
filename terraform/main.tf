terraform {
    backend "s3" {
        bucket = "aws-terraform-state-s3-jp6963"
        key    = "terraform.tfstate"
        region = "us-east-1"
    }
}

provider "aws" {
    region = var.aws_region
}

resource "aws_s3_bucket" "example" {
    bucket = "my-aws-terraform-demo-example-jp"
}
