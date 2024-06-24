terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "3.107.0"
    }
  }
  backend "azurerm" {
    resource_group_name  = "ad-rg-01"              
    storage_account_name = "adstorageacc2406"                
    container_name       = "adcontainer"                    
    key                  = "prod.terraform.tfstate"      
  }

}

provider "azurerm" {
  features {
    
  }
}