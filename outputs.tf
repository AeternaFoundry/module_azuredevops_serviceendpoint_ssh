output "serviceendpoint_sshes_id" {
  description = "Map of id values across all serviceendpoint_sshes, keyed the same as var.serviceendpoint_sshes"
  value       = { for k, v in azuredevops_serviceendpoint_ssh.serviceendpoint_sshes : k => v.id }
}
output "serviceendpoint_sshes_authorization" {
  description = "Map of authorization values across all serviceendpoint_sshes, keyed the same as var.serviceendpoint_sshes"
  value       = { for k, v in azuredevops_serviceendpoint_ssh.serviceendpoint_sshes : k => v.authorization }
}
output "serviceendpoint_sshes_description" {
  description = "Map of description values across all serviceendpoint_sshes, keyed the same as var.serviceendpoint_sshes"
  value       = { for k, v in azuredevops_serviceendpoint_ssh.serviceendpoint_sshes : k => v.description }
}
output "serviceendpoint_sshes_host" {
  description = "Map of host values across all serviceendpoint_sshes, keyed the same as var.serviceendpoint_sshes"
  value       = { for k, v in azuredevops_serviceendpoint_ssh.serviceendpoint_sshes : k => v.host }
}
output "serviceendpoint_sshes_password" {
  description = "Map of password values across all serviceendpoint_sshes, keyed the same as var.serviceendpoint_sshes"
  value       = { for k, v in azuredevops_serviceendpoint_ssh.serviceendpoint_sshes : k => v.password }
  sensitive   = true
}
output "serviceendpoint_sshes_port" {
  description = "Map of port values across all serviceendpoint_sshes, keyed the same as var.serviceendpoint_sshes"
  value       = { for k, v in azuredevops_serviceendpoint_ssh.serviceendpoint_sshes : k => v.port }
}
output "serviceendpoint_sshes_private_key" {
  description = "Map of private_key values across all serviceendpoint_sshes, keyed the same as var.serviceendpoint_sshes"
  value       = { for k, v in azuredevops_serviceendpoint_ssh.serviceendpoint_sshes : k => v.private_key }
  sensitive   = true
}
output "serviceendpoint_sshes_project_id" {
  description = "Map of project_id values across all serviceendpoint_sshes, keyed the same as var.serviceendpoint_sshes"
  value       = { for k, v in azuredevops_serviceendpoint_ssh.serviceendpoint_sshes : k => v.project_id }
}
output "serviceendpoint_sshes_service_endpoint_name" {
  description = "Map of service_endpoint_name values across all serviceendpoint_sshes, keyed the same as var.serviceendpoint_sshes"
  value       = { for k, v in azuredevops_serviceendpoint_ssh.serviceendpoint_sshes : k => v.service_endpoint_name }
}
output "serviceendpoint_sshes_username" {
  description = "Map of username values across all serviceendpoint_sshes, keyed the same as var.serviceendpoint_sshes"
  value       = { for k, v in azuredevops_serviceendpoint_ssh.serviceendpoint_sshes : k => v.username }
}

