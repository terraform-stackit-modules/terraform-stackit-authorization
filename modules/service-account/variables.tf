variable "role_assignments" {
  description = "Map of service-account role assignments ('Act-As' permissions), keyed by a stable identifier (resource_id, role, subject)."
  type = map(object({
    resource_id = string
    role        = string
    subject     = string
  }))
  default = {}
}
