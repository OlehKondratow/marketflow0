resource "azurerm_eventhub_namespace" "main" {
  name                     = "${var.project_name}-ehns"
  location                 = var.location
  resource_group_name      = var.resource_group_name
  sku                      = "Standard"
  capacity                 = 1
  auto_inflate_enabled     = true
  maximum_throughput_units = 4

  tags = {
    environment = var.environment
    project     = var.project_name
  }
}

resource "azurerm_eventhub" "ohlcv_raw" {
  name                = "ohlcv-raw"
  namespace_name      = azurerm_eventhub_namespace.main.name
  resource_group_name = var.resource_group_name
  partition_count     = 4
  message_retention   = 7
}

resource "azurerm_eventhub" "ohlcv_clean" {
  name                = "ohlcv-clean"
  namespace_name      = azurerm_eventhub_namespace.main.name
  resource_group_name = var.resource_group_name
  partition_count     = 4
  message_retention   = 7
}

resource "azurerm_eventhub" "ohlcv_signals" {
  name                = "ohlcv-signals"
  namespace_name      = azurerm_eventhub_namespace.main.name
  resource_group_name = var.resource_group_name
  partition_count     = 4
  message_retention   = 7
}

resource "azurerm_eventhub" "alerts" {
  name                = "alerts"
  namespace_name      = azurerm_eventhub_namespace.main.name
  resource_group_name = var.resource_group_name
  partition_count     = 4
  message_retention   = 7
}