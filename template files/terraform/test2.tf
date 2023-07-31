terraform {

 required_providers {

 azurerm = {

 source = "hashicorp/azurerm"

 version = "=3.0.1"

 }

 }

}




# 2. Configure the AzureRM Provider

provider "azurerm" {

 skip_provider_registration = true

 features {}




}




variable "web_app_names" {

 type = list(string)

 default = ["shawebapp1", "shawebapp2", "shawebapp3"]

}





#create Web App Name

resource "azurerm_app_service" "example" {

 count = length(var.web_app_names)

 name = var.web_app_names[count.index]

 location = "East US"

 resource_group_name = "research_development"

 app_service_plan_id = "/subscriptions/f545f248-4fb2-4f9c-a0cd-190c842b66d8/resourceGroups/research_development/providers/Microsoft.Web/serverfarms/Default1sl"

}




# 4. Create a virtual network within the resource group

/*resource "azurerm_virtual_network" "example" {

 name = "example-network"

 resource_group_name = azurerm_resource_group.example.name

 location = azurerm_resource_group.example.location

 address_space = ["10.0.0.0/16"]

} */