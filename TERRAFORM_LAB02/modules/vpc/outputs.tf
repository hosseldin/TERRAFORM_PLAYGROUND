# ==============================================
#
# =========== TERRAFORM FILE START =============
#
# ==============================================
#
# Created By: Hossam Mahmoud
# Date: 2025-03-03
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
  value = aws_vpc.main.id
}

<<<<<<< HEAD
=======
output "vpc_cidr" {
  value = aws_vpc.main.cidr_block
}

>>>>>>> ea8631a403d5a4e5e6039c69f42de322418f6aa7
output "public_subnet_id" {
  value = aws_subnet.public.id
}

output "private_subnet_id" {
  value = aws_subnet.private.id
}

<<<<<<< HEAD
output "subnet_ids" {
  description = "Map of subnet names to subnet IDs"
  value       = { for k, v in aws_subnet.this : k => v.id }
}




=======
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
