terraform { 
      backend "azurerm" {   
        resource_group_name = "Schnieder_hemant"  
        storage_account_name = "stogterraformstate01" 
        container_name = "terraformstatefile" 
        key = "dev.terraform.tfstate"
      }
}
