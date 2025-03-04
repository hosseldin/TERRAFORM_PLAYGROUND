# ==============================================
#
# =========== TERRAFORM FILE START =============
#
# ==============================================
#
# Created By: Hossam Mahmoud
# Date: 2025-03-04
# Filename: variable.tf
# Description: 
# Version: 1.0.0
# Copyright (c) 2025 Hossam. All rights reserved.
#
# ==============================================
#
# ====== TERRAFORM IMPLEMENTATION START ======
#
# ==============================================

# variable "ami_id" {
#   type = string
#   # default = "ami-04b4f1a9cf54c11d0"
# }
# variable "instance_type" {
#   type = string
#   # default = "t2.micro"
# }
# variable "vpc_id" {
#   type = string
# }
# variable "security_group_id" {
#   type = string
# }
# variable "public_subnet_id" {
#   type = string
# }

variable "instances" {
  type = list(object({
    ami_id            = string
    instance_type     = string
    security_group_id = string
    public_subnet_id  = string
    name              = string
  }))
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
