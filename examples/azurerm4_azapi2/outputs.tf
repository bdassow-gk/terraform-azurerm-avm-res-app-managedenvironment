output "dapr_component_resource_ids" {
  description = "A map of dapr component resource IDs."
  value       = module.managedenvironment.dapr_component_resource_ids
}

output "default_domain" {
  description = "The default domain of the Container Apps Managed Environment."
  value       = module.managedenvironment.default_domain
}

output "docker_bridge_cidr" {
  description = "The Docker bridge CIDR of the Container Apps Managed Environment."
  value       = module.managedenvironment.docker_bridge_cidr
}

output "id" {
  description = "The resource ID of the Container Apps Managed Environment."
  value       = module.managedenvironment.id
}

output "infrastructure_resource_group" {
  description = "The infrastructure resource group of the Container Apps Managed Environment."
  value       = module.managedenvironment.infrastructure_resource_group
}

output "name" {
  description = "The name of the Container Apps Managed Environment."
  value       = module.managedenvironment.name
}

output "platform_reserved_cidr" {
  description = "The platform reserved CIDR of the Container Apps Managed Environment."
  value       = module.managedenvironment.platform_reserved_cidr
}

output "platform_reserved_dns_ip_address" {
  description = "The platform reserved DNS IP address of the Container Apps Managed Environment."
  value       = module.managedenvironment.platform_reserved_dns_ip_address
}

output "resource_id" {
  description = "The resource ID of the Container Apps Managed Environment."
  value       = module.managedenvironment.resource_id
}

output "static_ip_address" {
  description = "The static IP address of the Container Apps Managed Environment."
  value       = module.managedenvironment.static_ip_address
}

output "storage_resource_ids" {
  description = "A map of dapr component resource IDs."
  value       = module.managedenvironment.storage_resource_ids
}
