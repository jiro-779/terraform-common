terraform {
  backend "s3" {
    bucket       = "jiro-terraform-common-state-377228489440"
    key          = "terraform-common/terraform.tfstate"
    region       = "eu-north-1"
    encrypt      = true
    use_lockfile = true
  }
}