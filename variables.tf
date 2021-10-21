variable "azurerm_resource_group_name" {
  type = string  
}
variable "location" {
    type = string
}

# variable "azurerm_resource_group_name1" {   
#     type = string
# }
# variable "location1" {   
#     type = string 
# }
variable "azurerm_virtual_network_name" {
  type = string  
}
variable "address_space" {
    type = list
}
variable "azurerm_subnet_name1" {
  type = string  
}
variable "address_prefixes1" {
    type = list
}
variable "azurerm_subnet_name2" {
  type = string  
}
variable "address_prefixes2" {
    type = list
}
variable "azurerm_network_security_group_name" {
  type = string  
}
variable "security_rule_name" {
    type = string
}
variable "priority" {
    type = string
}
variable "direction" {
    type = string
}
variable "access" {
    type = string
}
variable "protocol" {
    type = string
}
variable "source_port_range" {
    type = string
}
variable "destination_port_range" {
    type = string
}
variable "source_address_prefix" {
    type = string
}
variable "destination_address_prefix" {
    type = string
}
variable "azurerm_subnet_name3" {
  type = string  
}
variable "address_prefixes3" {
    type = list
}

variable "azurerm_subnet_name4" {
  type = string
}
variable "address_prefixes4" {  
    type = list
}