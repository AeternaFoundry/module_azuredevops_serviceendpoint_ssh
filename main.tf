resource "azuredevops_serviceendpoint_ssh" "serviceendpoint_sshes" {
  for_each = var.serviceendpoint_sshes

  host                  = each.value.host
  project_id            = each.value.project_id
  service_endpoint_name = each.value.service_endpoint_name
  username              = each.value.username
  description           = each.value.description
  password              = each.value.password
  port                  = each.value.port
  private_key           = each.value.private_key

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
      delete = timeouts.value.delete
      read   = timeouts.value.read
      update = timeouts.value.update
    }
  }
}

