# ==============================================
#
# =========== TERRAFORM FILE START =============
#
# ==============================================
#
# Created By: Hossam Mahmoud
# Date: 2025-03-04
# Filename: main.tf
# Description: 
# Version: 1.0.0
# Copyright (c) 2025 Hossam. All rights reserved.
#
# ==============================================
#
# ====== TERRAFORM IMPLEMENTATION START ======
#
# ==============================================

module "network" {
  source = "./modules/network"
  vpc_id = module.network.vpc_id
}

module "security_group" {
  source = "./modules/security_group"
  vpc_id = module.network.vpc_id
}


module "instance" {
  source    = "./modules/instance"
  instances = var.instances
}
# module "instance" {
#   source = "./modules/instance"

#   vpc_id            = module.network.vpc_id
#   security_group_id = module.security_group.security_group_id
#   public_subnet_id  = module.network.public_subnet_id

# }

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
