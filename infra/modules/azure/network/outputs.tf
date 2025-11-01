###########################################################
# Outputs — Azure Network
###########################################################

###########################################################
# Outputs — Azure Network
###########################################################

output "vnet_id" {
  value       = azurerm_virtual_network.vnet.id
  description = "ID of the Virtual Network"
}

output "vnet_name" {
  value       = azurerm_virtual_network.vnet.name
  description = "Name of the Virtual Network"
}

output "subnet_prod_id" {
  value       = azurerm_subnet.subnet_prod.id
  description = "ID of the Production subnet"
}

output "subnet_dev_id" {
  value       = azurerm_subnet.subnet_dev.id
  description = "ID of the Development subnet"
}

output "nsg_prod_id" {
  value       = azurerm_network_security_group.prod_nsg.id
  description = "Network Security Group ID for production"
}

output "nsg_dev_id" {
  value       = azurerm_network_security_group.dev_nsg.id
  description = "Network Security Group ID for development"
}

output "prod_ingress_ip" {
  value       = azurerm_public_ip.prod_ingress_ip.ip_address
  description = "Static public IP for production ingress"
}

