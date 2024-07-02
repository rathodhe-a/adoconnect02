data "azurerm_resource_group" "Schnieder_hemant" {
  name     = "Schnieder_hemant"
  #location = "West US 2" 
}

resource "azurerm_service_plan" "asp1" {
  name                = "asp-test-hemant-02"
  location            = data.azurerm_resource_group.Schnieder_hemant.location
  resource_group_name = data.azurerm_resource_group.Schnieder_hemant.name
  os_type = "Linux"
  sku_name = "B1"
}

resource "azurerm_app_service" "wap1" {
  name                = var.wap_name
  location            = data.azurerm_resource_group.Schnieder_hemant.location
  resource_group_name = data.azurerm_resource_group.Schnieder_hemant.name
  app_service_plan_id = azurerm_service_plan.asp1.id
 
  site_config {
    #dotnet_framework_version = var.dotnet_framework_version
    windows_fx_version = "node|20-lts"
  }
}
