terraform {
  required_version = ">= 1.3"

  required_providers {
    stackit = {
      source  = "stackitcloud/stackit"
      version = ">= 0.113.0"
    }
  }
}

# Role assignments are part of the experimental IAM feature: the provider must
# enable it. Custom roles work without the flag, role assignments do not.
provider "stackit" {
  experiments = ["iam"]
}
