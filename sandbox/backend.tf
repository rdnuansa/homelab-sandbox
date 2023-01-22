terraform {
  backend "s3" {
    bucket = "homelab-sandbox"
    key = "sandbox"
    region = "us-west-2"
  }
}