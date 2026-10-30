module "dashboard" {

  source    = "./modules/dashboard"
  dashboard = var.dashboard

}
module "monitors" {
  source   = "./modules/monitors"
  monitors = var.monitors
  tags     = var.tags
}



terraform {
  backend "s3" {
    bucket = "terraform.state-test"
    key    = "datadog/terraform.tfstate"
    region = "ap-south-1"
  }
}
