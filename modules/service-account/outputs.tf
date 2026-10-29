output "role_assignment_ids" {
  description = "Map of role assignment identifier to assignment ID."
  value       = { for k, a in stackit_authorization_service_account_role_assignment.this : k => a.id }
}
