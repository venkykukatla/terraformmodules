
# Create a resource group

 # create a resource group 
 
resource "azurerm_resource_group" "resource_venkat" {
  name     = var.azurerm_resource_group_name
  location = var.location
}

# resource "azurerm_resource_group" "resource_venkat1" {
#   name     = var.azurerm_resource_group_name1
#   location = var.location1
# }


resource "azurerm_virtual_network" "resource_venkat" {
  name                = var.azurerm_virtual_network_name
  location            = var.location
  resource_group_name = var.azurerm_resource_group_name
  address_space       = var.address_space

}  
resource "azurerm_subnet" "resource_subnetone" {
  name                 = var.azurerm_subnet_name1
  resource_group_name  = var.azurerm_resource_group_name
  virtual_network_name = var.azurerm_virtual_network_name
  address_prefixes     = var.address_prefixes1
}
resource "azurerm_subnet" "resource_subnettwo" {
  name                 = var.azurerm_subnet_name2
  resource_group_name  = var.azurerm_resource_group_name
  virtual_network_name = var.azurerm_virtual_network_name
  address_prefixes     = var.address_prefixes2
}
resource "azurerm_network_security_group" "resource_venkat" {
  name                = var.azurerm_network_security_group_name
  location            = var.location
  resource_group_name = var.azurerm_resource_group_name

  security_rule {
    name                       = var.security_rule_name
    priority                   = var.priority 
    direction                  = var.direction
    access                     = var.access
    protocol                   = var.protocol
    source_port_range          = var.source_port_range
    destination_port_range     = var.destination_port_range
    source_address_prefix      = var.source_address_prefix
    destination_address_prefix = var.destination_address_prefix
    
  }

}