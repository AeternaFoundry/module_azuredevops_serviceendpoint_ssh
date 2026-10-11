variable "serviceendpoint_sshes" {
  description = <<EOT
Map of serviceendpoint_sshes, attributes below
Required:
    - host
    - project_id
    - service_endpoint_name
    - username
Optional:
    - description
    - password
    - port
    - private_key
    - timeouts (block):
        - create (optional)
        - delete (optional)
        - read (optional)
        - update (optional)
EOT

  type = map(object({
    host                  = string
    project_id            = string
    service_endpoint_name = string
    username              = string
    description           = optional(string)
    password              = optional(string)
    port                  = optional(number)
    private_key           = optional(string)
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
      read   = optional(string)
      update = optional(string)
    }))
  }))
  validation {
    condition = alltrue([
      for k, v in var.serviceendpoint_sshes : (
        length(v.host) > 0
      )
    ])
    error_message = "must not be empty"
  }
  validation {
    condition = alltrue([
      for k, v in var.serviceendpoint_sshes : (
        length(v.username) > 0
      )
    ])
    error_message = "must not be empty"
  }
  validation {
    condition = alltrue([
      for k, v in var.serviceendpoint_sshes : (
        v.port == null || (v.port >= 0)
      )
    ])
    error_message = "must be at least 0"
  }
  validation {
    condition = alltrue([
      for k, v in var.serviceendpoint_sshes : (
        v.password == null || (length(v.password) > 0)
      )
    ])
    error_message = "must not be empty"
  }
  validation {
    condition = alltrue([
      for k, v in var.serviceendpoint_sshes : (
        v.private_key == null || (length(v.private_key) > 0)
      )
    ])
    error_message = "must not be empty"
  }
}

