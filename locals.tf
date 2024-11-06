locals {
  tags            = merge(var.tags, { module_name = "tf-module-vpc" })
  vpc_tags        = merge(local.tags, { Name = "${var.env}-vpc" })
  web_subnet_tags = merge(local.tags, { Name = "${var.env}-web-subnet" })
  app_subnet_tags = merge(local.tags, { Name = "${var.env}-app-subnet" })
  db_subnet_tags  = merge(local.tags, { Name = "${var.env}-db-subnet" })


  name_tag_prefix = var.env
}