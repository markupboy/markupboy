variable "access_key" {}
variable "secret_key" {}

atlas {
  name = "markupboy/markupboy.com"
}

# Configure the AWS Provider
provider "aws" {
    access_key = "${var.access_key}"
    secret_key = "${var.secret_key}"
    region = "us-east-1"
}

resource "aws_s3_bucket" "b" {
    bucket = "markupboy.com"
    acl = "public-read"
    policy = "${file("policy.json")}"

    website {
        index_document = "index.html"
        error_document = "error.html"
    }
}
