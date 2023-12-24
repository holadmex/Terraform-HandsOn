terraform {
  backend "s3" {
    bucket = "terra-terra"
    key    = "terraform/backend-exercise"
    region = "us-east-1"
  }
}
