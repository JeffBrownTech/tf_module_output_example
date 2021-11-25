resource "random_pet" "random_name" {
  separator = "-"
}

resource "azurerm_storage_container" "container" {
  name                  = random_pet.random_name.id
  storage_account_name  = var.storage_account_name
  container_access_type = "private"
}

output "container_name" {
  value = azurerm_storage_container.container.name
}