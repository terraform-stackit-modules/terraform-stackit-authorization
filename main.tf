module "organization" {
  source = "./modules/organization"

  custom_roles     = var.organization_custom_roles
  role_assignments = var.organization_role_assignments
}

module "folder" {
  source = "./modules/folder"

  custom_roles     = var.folder_custom_roles
  role_assignments = var.folder_role_assignments
}

module "project" {
  source = "./modules/project"

  custom_roles     = var.project_custom_roles
  role_assignments = var.project_role_assignments
}

module "service_account" {
  source = "./modules/service-account"

  role_assignments = var.service_account_role_assignments
}
