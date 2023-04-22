terraform {
  required_providers{
    azurerm = {
        source = "hashicorp/azurerm"
    }
  }
}


resource "azurerm_resource_group" "rg" {
  for_each = var.rg

  name     = each.key
  location = each.value.location[0]

  tags = {
    Name = each.value.name
  }
}