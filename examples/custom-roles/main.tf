#####################################################################################
# "custom-roles" example — self-contained, requires only `project_id`.
#
# Creates a project custom role and assigns it to a service account.
#
# PREREQUISITE: creating custom roles requires the caller to hold the
# `iam.role.add` permission — a HIGH-PRIVILEGE permission (per the STACKIT docs,
# it allows adding arbitrary permissions to the created role, even permissions
# the creating subject does not possess). The Portal route is: project >
# IAM and Management > Roles. Not covered by the "IAM Member Admin" role;
# usually carried by the project Owner/Editor roles.
#####################################################################################

resource "stackit_service_account" "auditor" {
  project_id = var.project_id
  name       = "example-audit-sa" # max 20 characters
}

module "authorization" {
  source = "../.."

  project_custom_roles = {
    example = {
      resource_id = var.project_id
      name        = "example.custom.viewer"
      description = "Example custom role created by the custom-roles example"
      permissions = ["iam.subject.get"]
    }
  }

  project_role_assignments = {
    auditor = {
      resource_id = var.project_id
      role        = "reader"
      subject     = stackit_service_account.auditor.email
    }
  }
}
