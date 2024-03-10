###
### TODO: Setup Your provider
###
provider "azurerm" {
  features {}
}

terraform {
   backend "azurerm" {
    resource_group_name  = "tfStateRG"
    storage_account_name = "tfstatemeritoms"
    container_name       = "tfstate1"
    key                  = "tfstateAZ.tf"
  }
}
