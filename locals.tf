locals {
  tags     = merge(var.tags, { module_name = "tf-module-vpc" })
  vpc_tags = merge(var.tags, { module_name = "${var.env}-vpc" })

  name_tag_prefix = var.env
}