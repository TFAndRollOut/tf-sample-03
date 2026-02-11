module "storage_account" {
  source = "../modules/storage-account"
  
  # Pass any necessary variables to the module
  storage_account_name = "mystorageaccount"
  resource_group_name  = "myresourcegroup"
  location             = "eastus"
  account_tier         = "Standard"
  account_replication_type = "LRS"
}

module "virtual_network" {
  source = "../modules/virtual-network"
  
  # Pass any necessary variables to the module
  virtual_network_name = "myvirtualnetwork"
  resource_group_name  = "myresourcegroup"
  location             = "eastus"
}

module "subnet" {
  source = "../modules/subnet"
  
  # Pass any necessary variables to the module
  subnet_name = "mysubnet"
  virtual_network_name = "myvirtualnetwork"
  resource_group_name  = "myresourcegroup"
  location             = "eastus"
}