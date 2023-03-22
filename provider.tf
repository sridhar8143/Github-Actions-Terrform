terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=3.0.0"
    }
  }
}


provider "azurerm" {
  features {}
  
  subscription_id="f13ee35e-698e-4e96-9c57-6ff72c0da322"
  tenant_id="f6981b0a-3915-4628-be7e-368196415f8f"
  client_id="94360f58-5bed-4f81-b199-bb60611fc76a"
  client_secret="PMe8Q~PiTSMIl1AMnlWQahTwiKysBvCjsFxtuaU7"

}

terraform {
  backend "azurerm" {
    storage_account_name = "kopicloudtfstate147"
    container_name       = "tfstatefile"
    key                  = "prod.terraform.tfstate"

    # rather than defining this inline, the Access Key can also be sourced
    # from an Environment Variable - more information is available below.
    access_key = "jQ7u8PPpOxhH0+4cXuVW6s+y2KARPfF5HiQAHjlEUdLPmsSs19b/pwxlHsjU4NUclPZ74i4XbujM+AStl2qhUA=="
  }
}
