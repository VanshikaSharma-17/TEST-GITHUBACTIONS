module "dashboard" {

  source    = "./modules/dashboard"
  dashboard = var.dashboard

}
module "monitors" {
  source   = "./modules/monitors"
  monitors = var.monitors
  tags     = var.tags
}






