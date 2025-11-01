output "vnet_id" {
  value = azurerm_virtual_network.vnet.id
}

output "subnet_prod_id" {
  value = azurerm_subnet.subnet_prod.id
}

output "subnet_dev_id" {
  value = azurerm_subnet.subnet_dev.id
}

output "prod_ingress_ip" {
  value = azurerm_public_ip.prod_ingress_ip.ip_address
}
