---
# azurerm_service_plan

Manages an App Service: Service Plan.

## Example Usage

```hcl
provider "azurerm" {
  features {}
}

module "resource_group" {
source = "git::https://github.com/e-caballero/azure-resource-group?ref=v1"

# Required Inputs
location                  = var.location
count_number              = var.count_number
environment               = var.environment
application_id            = var.application_id
component_name            = var.component_name
application_owner         = var.application_owner
application_owner_email   = var.application_owner_email
application_team          = var.application_team
application_team_email    = var.application_team_email
application_team_slack    = var.application_team_slack
application_teams_channel = var.application_teams_channel
project                   = var.project
external                  = var.external
cost_center               = var.cost_center
compliance                = "none"
description               = "Resource Group for Demo"
}

module "service_plan" {
  source                    = https://github.com/e-caballero/azure-service-plan?ref=v1
  resource_group_name       = module.resource_group.name
  location                  = var.location
  count_number              = var.count_number
  environment               = var.environment
  application_id            = var.application_id
  component_name            = var.component_name
  application_owner         = var.application_owner
  application_owner_email   = var.application_owner_email
  application_team          = var.application_team
  application_team_email    = var.application_team_email
  application_team_slack    = var.application_team_slack
  application_teams_channel = var.application_teams_channel
  project                   = var.project
  external                  = var.external
  cost_center               = var.cost_center
  compliance                = "none"
  os_type                   = "Linux"
}
```


<!-- BEGIN_TF_DOCS --> 

<!-- END_TF_DOCS --> 
