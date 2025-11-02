# import.tf
resource "azurerm_public_ip" "dev_ingress_ip" {
  name                = "marketflow0-dev-ip"
  location            = var.location
  resource_group_name = var.resource_group_name
  allocation_method   = "Static"
  sku                 = "Standard"
}


resource "azurerm_public_ip" "prod_ingress_ip" {
  name                = "marketflow0-prod-ip"
  location            = "northeurope"
  resource_group_name = "marketflow0-rg"
  allocation_method   = "Static"
  sku                 = "Standard"

  tags = {
    environment = "prod"
    managed_by  = "manual"
    imported    = "true"
  }
}
