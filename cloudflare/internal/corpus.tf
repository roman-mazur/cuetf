terraform {
  required_version = ">=1.5"
  required_providers {
    aws = {
      source = "cloudflare/cloudflare"
      version = "= 5.8.2"
    }
  }
}
