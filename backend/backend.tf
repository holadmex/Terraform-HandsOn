terraform {
  backend "s3" {
    bucket = "terra-terra"
    key    = "terraform/backend"
    region = "us-east-1"
  }
}
