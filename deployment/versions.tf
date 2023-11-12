terraform {
  required_version = ">=v1.6.3"
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.25.0"
    }

    google = {
      source = "hashicorp/google"
      version = "5.5.0"
    }
  }
}
