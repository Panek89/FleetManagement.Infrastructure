variable "shared_resource_group_name" {
  type        = string
  description = "Resource group name retrieved from the FleetManagement_Infrastructure library"
}

variable "location" {
  type        = string
  description = "Location retrieved from the FleetManagement_Infrastructure library (fm_location)"
  default     = "westeurope"
}
