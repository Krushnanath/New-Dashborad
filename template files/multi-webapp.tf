terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=3.0.1"
    }
  }
}

provider "azurerm" {
  skip_provider_registration = true
  features {}
}

resource "azurerm_app_service" "example1" {
  name                = "example-webapp-1"
  location            = "East US"
  resource_group_name = "research_development"
  app_service_plan_id = "/subscriptions/f545f248-4fb2-4f9c-a0cd-190c842b66d8/resourceGroups/research_development/providers/Microsoft.Web/serverfarms/Default1sl"
}

resource "azurerm_app_service" "example2" {
  name                = "example-webapp-2"
  location            = "East US"
  resource_group_name = "research_development"
  app_service_plan_id = "/subscriptions/f545f248-4fb2-4f9c-a0cd-190c842b66d8/resourceGroups/research_development/providers/Microsoft.Web/serverfarms/Default1sl"
}

resource "azurerm_app_service" "example3" {
  name                = "example-webapp-3"
  location            = "East US"
  resource_group_name = "research_development"
  app_service_plan_id = "/subscriptions/f545f248-4fb2-4f9c-a0cd-190c842b66d8/resourceGroups/research_development/providers/Microsoft.Web/serverfarms/Default1sl"
}
