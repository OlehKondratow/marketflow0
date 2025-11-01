# import.tf
resource "azurerm_public_ip" "dev_ingress_ip" {
  name                = "marketflow0-dev-ip"
  location            = var.location
  resource_group_name = var.resource_group_name
  allocation_method   = "Static"
  sku                 = "Standard"
}
