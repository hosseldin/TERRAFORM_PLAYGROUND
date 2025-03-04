# ==============================================
#
# =========== TERRAFORM FILE START =============
#
# ==============================================
#
# Created By: Hossam Mahmoud
# Date: 2025-03-04
# Filename: outputs.tf
# Description: 
# Version: 1.0.0
# Copyright (c) 2025 Hossam. All rights reserved.
#
# ==============================================
#
# ====== TERRAFORM IMPLEMENTATION START ======
#
# ==============================================

output "vpc_id" {
  value = module.vpc.vpc_id
}

<<<<<<< HEAD
output "public_subnet_id" {
  value = module.vpc.public_subnet_id
}

output "private_subnet_id" {
  value = module.vpc.private_subnet_id
}

output "security_group_id" {
  value = module.security_group.security_group_id
}

output "instance_ids" {
  value = module.instances.instance_ids
}


=======
output "public_instance_id" {
  value = module.public_instance.instance_id
}

output "private_instance_id" {
  value = module.private_instance.instance_id
}

>>>>>>> ea8631a403d5a4e5e6039c69f42de322418f6aa7
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
