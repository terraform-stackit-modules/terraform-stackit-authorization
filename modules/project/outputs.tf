output "custom_role_ids" {
  description = "Map of custom role identifier to role ID."
  value       = { for k, r in stackit_authorization_project_custom_role.this : k => r.role_id }
}

output "role_assignment_ids" {
  description = "Map of role assignment identifier to assignment ID."
  value       = { for k, a in stackit_authorization_project_role_assignment.this : k => a.id }
}
