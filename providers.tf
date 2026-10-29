terraform {
  required_providers {
    datadog = {
      source  = "DataDog/datadog"
      version = "~> 3.0"
    }
  }
}
# Configure the Datadog provider
provider "datadog" {
  api_key = var.api_key
  app_key = var.app_key
}
