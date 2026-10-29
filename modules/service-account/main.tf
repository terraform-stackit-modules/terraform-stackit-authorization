resource "stackit_authorization_service_account_role_assignment" "this" {
  for_each = var.role_assignments

  resource_id = each.value.resource_id
  role        = each.value.role
  subject     = each.value.subject
}
