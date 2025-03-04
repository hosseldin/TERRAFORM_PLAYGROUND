# ==============================================
#
# =========== TERRAFORM FILE START =============
#
# ==============================================
#
# Created By: Hossam Mahmoud
# Date: 2025-03-03
# Filename: variables.tf
# Description: 
# Version: 1.0.0
# Copyright (c) 2025 Hossam. All rights reserved.
#
# ==============================================
#
# ====== TERRAFORM IMPLEMENTATION START ======
#
# ==============================================

variable "vpc_cidr" {
  type        = string
  description = "CIDR block for the VPC"
}

<<<<<<< HEAD
=======
variable "vpc_name" {}

variable "subnet_configs" {
  type = map(object({
    cidr_block = string
    az         = string
    is_public  = bool
  }))
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
