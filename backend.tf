terraform {
  backend "s3" {
    bucket = "tf-task-salman-ebiz"
    key    = "tf-backend"
    region = "us-east-1"
  }
}
