output "serviceendpoint_sshes_id" {
  description = "Map of id values across all serviceendpoint_sshes, keyed the same as var.serviceendpoint_sshes except keys with no id are omitted"
  value       = { for k, v in azuredevops_serviceendpoint_ssh.serviceendpoint_sshes : k => v.id if v.id != null && length(v.id) > 0 }
}
output "serviceendpoint_sshes_authorization" {
  description = "Map of authorization values across all serviceendpoint_sshes, keyed the same as var.serviceendpoint_sshes except keys with no authorization are omitted"
  value       = { for k, v in azuredevops_serviceendpoint_ssh.serviceendpoint_sshes : k => v.authorization if v.authorization != null && length(v.authorization) > 0 }
}
output "serviceendpoint_sshes_description" {
  description = "Map of description values across all serviceendpoint_sshes, keyed the same as var.serviceendpoint_sshes except keys with no description are omitted"
  value       = { for k, v in azuredevops_serviceendpoint_ssh.serviceendpoint_sshes : k => v.description if v.description != null && length(v.description) > 0 }
}
output "serviceendpoint_sshes_host" {
  description = "Map of host values across all serviceendpoint_sshes, keyed the same as var.serviceendpoint_sshes except keys with no host are omitted"
  value       = { for k, v in azuredevops_serviceendpoint_ssh.serviceendpoint_sshes : k => v.host if v.host != null && length(v.host) > 0 }
}
output "serviceendpoint_sshes_password" {
  description = "Map of password values across all serviceendpoint_sshes, keyed the same as var.serviceendpoint_sshes except keys with no password are omitted"
  value       = { for k, v in azuredevops_serviceendpoint_ssh.serviceendpoint_sshes : k => v.password if v.password != null && length(v.password) > 0 }
  sensitive   = true
}
output "serviceendpoint_sshes_port" {
  description = "Map of port values across all serviceendpoint_sshes, keyed the same as var.serviceendpoint_sshes except keys with no port are omitted"
  value       = { for k, v in azuredevops_serviceendpoint_ssh.serviceendpoint_sshes : k => v.port if v.port != null }
}
output "serviceendpoint_sshes_private_key" {
  description = "Map of private_key values across all serviceendpoint_sshes, keyed the same as var.serviceendpoint_sshes except keys with no private_key are omitted"
  value       = { for k, v in azuredevops_serviceendpoint_ssh.serviceendpoint_sshes : k => v.private_key if v.private_key != null && length(v.private_key) > 0 }
  sensitive   = true
}
output "serviceendpoint_sshes_project_id" {
  description = "Map of project_id values across all serviceendpoint_sshes, keyed the same as var.serviceendpoint_sshes except keys with no project_id are omitted"
  value       = { for k, v in azuredevops_serviceendpoint_ssh.serviceendpoint_sshes : k => v.project_id if v.project_id != null && length(v.project_id) > 0 }
}
output "serviceendpoint_sshes_service_endpoint_name" {
  description = "Map of service_endpoint_name values across all serviceendpoint_sshes, keyed the same as var.serviceendpoint_sshes except keys with no service_endpoint_name are omitted"
  value       = { for k, v in azuredevops_serviceendpoint_ssh.serviceendpoint_sshes : k => v.service_endpoint_name if v.service_endpoint_name != null && length(v.service_endpoint_name) > 0 }
}
output "serviceendpoint_sshes_username" {
  description = "Map of username values across all serviceendpoint_sshes, keyed the same as var.serviceendpoint_sshes except keys with no username are omitted"
  value       = { for k, v in azuredevops_serviceendpoint_ssh.serviceendpoint_sshes : k => v.username if v.username != null && length(v.username) > 0 }
}

