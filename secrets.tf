/* Token for interacting with Cloudflare API. */
data "pass_password" "cloudflare_token" {
  path = "cloud/Cloudflare/token"
}

/* Email address of Cloudflare account. */
data "pass_password" "cloudflare_email" {
  path = "cloud/Cloudflare/email"
}

/* ID of CloudFlare Account. */
data "pass_password" "cloudflare_account" {
  path = "cloud/Cloudflare/account"
}
