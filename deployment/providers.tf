provider "aws" {
  region = var.region
  assume_role {
    role_arn  = var.main_aws_role_arn
  }
}

provider "google" {

}

provider "google-beta" {

}