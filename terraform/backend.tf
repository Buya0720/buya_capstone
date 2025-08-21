terraform {
  backend "s3" {
    bucket         = "deb-w6d2"
    key            = "tfstate/dev.tfstate"
    region         = "ap-southeast-2"
    # dynamodb_table = "tfstate-lock"
    encrypt        = true
  }
}