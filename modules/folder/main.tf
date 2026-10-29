resource "stackit_authorization_folder_custom_role" "this" {
  for_each = var.custom_roles

  resource_id = each.value.resource_id
  name        = each.value.name
  description = each.value.description
  permissions = each.value.permissions
}

resource "stackit_authorization_folder_role_assignment" "this" {
  for_each = var.role_assignments

  resource_id = each.value.resource_id
  role        = each.value.role
  subject     = each.value.subject
}
