output "organization_custom_role_ids" {
  description = "Map of organization custom role identifier to role ID."
  value       = module.organization.custom_role_ids
}

output "organization_role_assignment_ids" {
  description = "Map of organization role assignment identifier to assignment ID."
  value       = module.organization.role_assignment_ids
}

output "folder_custom_role_ids" {
  description = "Map of folder custom role identifier to role ID."
  value       = module.folder.custom_role_ids
}

output "folder_role_assignment_ids" {
  description = "Map of folder role assignment identifier to assignment ID."
  value       = module.folder.role_assignment_ids
}

output "project_custom_role_ids" {
  description = "Map of project custom role identifier to role ID."
  value       = module.project.custom_role_ids
}

output "project_role_assignment_ids" {
  description = "Map of project role assignment identifier to assignment ID."
  value       = module.project.role_assignment_ids
}

output "service_account_role_assignment_ids" {
  description = "Map of service-account role assignment identifier to assignment ID."
  value       = module.service_account.role_assignment_ids
}
