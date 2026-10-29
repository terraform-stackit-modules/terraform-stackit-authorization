# ─── Organization level ────────────────────────────────────────────────────────

variable "organization_custom_roles" {
  description = <<-EOT
    Map of custom roles to create at the organization level, keyed by a stable identifier. Each value:
      - `resource_id`: organization resource to add the custom role to.
      - `name`       : name of the role.
      - `description`: human readable description of the role.
      - `permissions`: permissions for the role (e.g. `iam.subject.get`).
  EOT
  type = map(object({
    resource_id = string
    name        = string
    description = string
    permissions = list(string)
  }))
  default = {}
}

variable "organization_role_assignments" {
  description = <<-EOT
    Map of role assignments at the organization level, keyed by a stable identifier. Each value:
      - `resource_id`: organization resource to assign the role to.
      - `role`       : role to be assigned (available roles can be queried via stackit-cli).
      - `subject`    : identifier of user, service account or client (lowercased email or client name).
    NOTE: role assignments require the provider experiment `iam` (see the module README).
  EOT
  type = map(object({
    resource_id = string
    role        = string
    subject     = string
  }))
  default = {}
}

# ─── Folder level ──────────────────────────────────────────────────────────────

variable "folder_custom_roles" {
  description = <<-EOT
    Map of custom roles to create at the folder level, keyed by a stable identifier. Each value:
      - `resource_id`: folder resource to add the custom role to.
      - `name`       : name of the role.
      - `description`: human readable description of the role.
      - `permissions`: permissions for the role.
  EOT
  type = map(object({
    resource_id = string
    name        = string
    description = string
    permissions = list(string)
  }))
  default = {}
}

variable "folder_role_assignments" {
  description = <<-EOT
    Map of role assignments at the folder level, keyed by a stable identifier. Each value:
      - `resource_id`: folder resource to assign the role to.
      - `role`       : role to be assigned.
      - `subject`    : identifier of user, service account or client (lowercased).
    NOTE: role assignments require the provider experiment `iam` (see the module README).
  EOT
  type = map(object({
    resource_id = string
    role        = string
    subject     = string
  }))
  default = {}
}

# ─── Project level ─────────────────────────────────────────────────────────────

variable "project_custom_roles" {
  description = <<-EOT
    Map of custom roles to create at the project level, keyed by a stable identifier. Each value:
      - `resource_id`: project to add the custom role to.
      - `name`       : name of the role.
      - `description`: human readable description of the role.
      - `permissions`: permissions for the role.
  EOT
  type = map(object({
    resource_id = string
    name        = string
    description = string
    permissions = list(string)
  }))
  default = {}
}

variable "project_role_assignments" {
  description = <<-EOT
    Map of role assignments at the project level, keyed by a stable identifier. Each value:
      - `resource_id`: project to assign the role to.
      - `role`       : role to be assigned (e.g. `reader`).
      - `subject`    : identifier of user, service account or client (lowercased).
    NOTE: role assignments require the provider experiment `iam` (see the module README).
  EOT
  type = map(object({
    resource_id = string
    role        = string
    subject     = string
  }))
  default = {}
}

# ─── Service-account level (Act-As) ────────────────────────────────────────────

variable "service_account_role_assignments" {
  description = <<-EOT
    Map of service-account role assignments ('Act-As' permissions), keyed by a stable identifier. Each value:
      - `resource_id`: the target service account ID to assign the role on.
      - `role`       : role to be assigned (commonly `user`).
      - `subject`    : the service account (email) that is granted permission to impersonate the target.
    NOTE: role assignments require the provider experiment `iam` (see the module README).
  EOT
  type = map(object({
    resource_id = string
    role        = string
    subject     = string
  }))
  default = {}
}
