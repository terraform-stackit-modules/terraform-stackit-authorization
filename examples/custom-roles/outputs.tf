output "custom_role_ids" {
  description = "The custom role IDs created by the example."
  value       = module.authorization.project_custom_role_ids
}

output "role_assignment_ids" {
  description = "The role assignment IDs created by the example."
  value       = module.authorization.project_role_assignment_ids
}
