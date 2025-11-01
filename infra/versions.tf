terraform {
  required_version = ">= 1.8.0"

  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 4.0"
    }
    snowflake = {
      source  = "snowflakedb/snowflake"
      version = "~> 0.94.0"
    }  
  }
}
