provider "cloudflare" {
  email      = data.pass_password.cloudflare_email.password
  api_key    = data.pass_password.cloudflare_token.password
  account_id = data.pass_password.cloudflare_account.password
}

# Uses PASSWORD_STORE_DIR environment variable
provider "pass" {}
