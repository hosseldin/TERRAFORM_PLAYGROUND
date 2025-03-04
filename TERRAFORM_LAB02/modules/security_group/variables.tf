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
<<<<<<< HEAD
=======
variable "vpc_id" {
  type        = string
  description = "VPC ID to associate the security group with"
}
>>>>>>> ea8631a403d5a4e5e6039c69f42de322418f6aa7

variable "vpc_id" {
  type        = string
  description = "VPC ID to associate the security group with"
}

variable "ingress_rules" {
  type = list(object({
    port        = number
    protocol    = string
    cidr_blocks = list(string)
  }))
<<<<<<< HEAD
=======
  description = "List of ingress rules"
>>>>>>> ea8631a403d5a4e5e6039c69f42de322418f6aa7
}

variable "egress_rules" {
  type = list(object({
    port        = number
    protocol    = string
    cidr_blocks = list(string)
  }))
<<<<<<< HEAD
}


=======
  description = "List of egress rules"
  default = [
    {
      port        = 0
      protocol    = "-1"
      cidr_blocks = ["0.0.0.0/0"]
    }
  ]
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
