variable "custom_roles" {
  description = "Map of custom roles to create at the organization level, keyed by a stable identifier (resource_id, name, description, permissions)."
  type = map(object({
    resource_id = string
    name        = string
    description = string
    permissions = list(string)
  }))
  default = {}
}

variable "role_assignments" {
  description = "Map of role assignments at the organization level, keyed by a stable identifier (resource_id, role, subject)."
  type = map(object({
    resource_id = string
    role        = string
    subject     = string
  }))
  default = {}
}
