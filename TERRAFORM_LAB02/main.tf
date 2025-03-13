# ==============================================
#
# =========== TERRAFORM FILE START =============
#
# ==============================================
#
# Created By: Hossam Mahmoud
# Date: 2025-02-28
# Filename: main.tf
# Description: Calls the networking and compute modules
# Version: 1.0.0
# Copyright (c) 2025 Hossam. All rights reserved.
#
# ==============================================
#
# ====== TERRAFORM IMPLEMENTATION START ======
#
# ==============================================


terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0"
    }
  }
}

provider "aws" {
  region = var.aws_region
}

# module "vpc" {
#   source     = "./modules/vpc"
#   subnets    = var.subnets
#   aws_region = var.aws_region
# }

module "security_group" {
  source = "./modules/security_group"

  # vpc_id          = module.vpc.vpc_id
  vpc_id          = data.aws_vpc.selected.id
  security_groups = var.security_groups
  ingress_rules   = var.ingress_rules
}

module "instances" {
  source    = "./modules/instance"
  instances = var.instances
  # subnets        = module.vpc.subnets
  subnets        = data.aws_vpc.selected
  security_group = module.security_group.pub-secgrp-id
  ami            = data.aws_ami.ubuntu
}

data "aws_vpc" "selected" {
  filter {
    name   = "tag:Name"
    values = [var.vpc_name]
  }
}

# ==============================================
#
# ======= TERRAFORM IMPLEMENTATION END ========
#
# ==============================================
#
# End of File
# Copyright (c) 2025 Hossam. All rights reserved.
#
# ==============================================
#
# ============= TERRAFORM FILE END =============
#
# ==============================================
