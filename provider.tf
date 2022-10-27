provider "aws" {
  region = var.region
  assume_role {
    sts_regional_endpoints = "regional"
  }
}
