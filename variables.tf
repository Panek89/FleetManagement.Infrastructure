variable "shared_resource_group_name" {
  type        = string
  description = "Resource group name retrieved from the FleetManagement_Infrastructure library"
}

variable "location" {
  type        = string
  description = "Location retrieved from the FleetManagement_Infrastructure library (fm_location)"
  default     = "westeurope"
}

variable "env_suffix" {
  type        = string
  description = "Environment suffix (e.g. dev, prod)"
}

variable "mssql_server_name" {
  type        = string
  description = "Base name for the MSSQL Server"
}

variable "fm_suffix" {
  type        = string
  description = "Suffix for FleetManagement project"
}
