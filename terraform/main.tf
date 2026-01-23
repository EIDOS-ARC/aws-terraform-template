terraform {
    backend "s3" {}
}

provider "aws" {
    region = var.aws_region
}

resource "aws_amplify_app" "nextjs_app" {
    name = "my-app-nextjs"
    repository = "https://github.com/jpalominolau/aws-terraform-template"

    build_spec = file("${path.module}/../amplify.yml")
    access_token = var.github_token
}

resource "aws_amplify_branch" "main_branch" {
    app_id = aws_amplify_app.nextjs_app.id
    branch_name = "master"
    enable_auto_build = true
}
