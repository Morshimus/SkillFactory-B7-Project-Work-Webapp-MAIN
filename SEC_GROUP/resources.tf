resource "yandex_vpc_security_group" "morsh_group" {
  name        = var.sec_name
  description = var.sec_description
  network_id  = var.network_id

  labels = local.labels

  ingress {
    protocol       = var.ingress1_protocol
    description    = var.ingress1_description
    v4_cidr_blocks = var.ingress1_cidr_blocks
    port           = var.ingress1_port
  }

  egress {
    protocol       = var.egress1_protocol
    description    = var.egress1_description
    v4_cidr_blocks = var.egress1_cidr_blocks

  }

}