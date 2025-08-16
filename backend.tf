terraform {
  backend "azurerm" {
    resource_group_name  = "tfstate-rg"
    storage_account_name = "tfstateaccountbeawart"
    container_name       = "tfstate"
    key                  = "terraform.tfstate"
  }
}
