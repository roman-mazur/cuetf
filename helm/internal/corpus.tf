terraform {
  required_version = ">=1.5"
  required_providers {
    aws = {
      source = "hashicorp/helm"
      version = "= 2.16.0"
    }
  }
}
