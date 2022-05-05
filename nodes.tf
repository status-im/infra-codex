/* Hetzner AX41-NVMe
 * AMD Ryzen 5 3600 Hexa-Core
 * 64 GB DDR4 RAM
 * 2 x 512 GB NVMe SSD */
module "codex" {
  source = "github.com/status-im/infra-tf-dummy-module"

  name   = "metal"
  env    = local.ws.env
  stage  = local.ws.stage
  group  = "${local.ws.env}-${local.ws.stage}"
  region = "eu-hel1"
  prefix = "he"
  domain = var.domain

  ips = local.ws.hosts
}
