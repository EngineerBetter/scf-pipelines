variable "region" {}

variable "force-destroy" {
  default = false
}

provider "aws" {
  region = "${var.region}"
}

resource "aws_s3_bucket" "ci" {
  bucket        = "scf-pipeline"
  acl           = "private"
  force_destroy = "${var.force-destroy}"
}
