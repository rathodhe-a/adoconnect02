terraform { 
      backend "azurerm" {   
        resource_group_name = "Schnieder_hemant"  
        storage_account_name = "stogterraformstate01" 
        container_name = "terraformstatefile" 
        key = "dev.terraform.tfstate" 
        access_key = "orgaPzsH7HWBcZBnkslnMIOgbZE1kM5NXzdhH33hd3yGRDmNqHfCK69KglZkf3yUS8+jyYG4JArB+ASt0qEDzw=="
      }
}