/**
 * This is a hacky way of binding specific variable
 * values to different Terraform workspaces.
 *
 * Details:
 * https://github.com/hashicorp/terraform/issues/15966
 */

locals {
  env = {
    defaults = {
      env   = "codex"
      stage = terraform.workspace
    }

    # Inherits defaults.
    test = {
      hosts = [
        "65.21.196.45", # metal-01.he-eu-hel1.codex.test
        "65.21.196.46", # metal-02.he-eu-hel1.codex.test
      ]
    }
  }
}

locals {
  ws = merge(local.env["defaults"], local.env[terraform.workspace])
}
