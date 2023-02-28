
provider "azurerm" {
  features {}
}

resource "azurerm_service_plan" "service_plan" {
  name                = local.app_service_plan_name
  resource_group_name = var.resource_group_name
  location            = var.location
  os_type             = var.os_type
  # check if environment is prod set to premium, if staging set to standard and if dev set to free or 
  sku_name            = var.environment == "prod" ? "P1v2" : var.environment == "stg" ? "S1" : "F1"
}

