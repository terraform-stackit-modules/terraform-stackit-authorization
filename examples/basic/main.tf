#####################################################################################
# "basic" example — self-contained, requires only `project_id`.
#
# Assigns the built-in `reader` role on the project to a new service account.
# NOTE: creating this role assignment requires the caller (the CI service
# account) to hold the "IAM Member Admin" role on the project.
#
# Custom roles (see examples/custom-roles) require the high-privilege
# `iam.role.add` permission and are kept out of this basic example.
#####################################################################################

resource "stackit_service_account" "reader" {
  project_id = var.project_id
  name       = "example-authz-reader" # max 20 characters
}

module "authorization" {
  source = "../.."

  project_role_assignments = {
    reader = {
      resource_id = var.project_id
      role        = "reader"
      subject     = stackit_service_account.reader.email
    }
  }
}
