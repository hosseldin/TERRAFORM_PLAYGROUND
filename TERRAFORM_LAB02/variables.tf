# ==============================================
#
# =========== TERRAFORM FILE START =============
#
# ==============================================
#
# Created By: Hossam Mahmoud
# Date: 2025-03-02
# Filename: variables.tf
# Description: Variables for reusability and maintainability
# Version: 1.0.0
# Copyright (c) 2025 Hossam. All rights reserved.
#
# ==============================================
#
# ====== TERRAFORM IMPLEMENTATION START ======
#
# ==============================================

variable "aws_region" {
  description = "The AWS region to deploy resources"
  type        = string
}


variable "vpc_name" {
  description = "Name of the VPC"
  type        = string
}

# Variable for the VPC
variable "vpc_cidr" {
  description = "CIDR block for the VPC"
  type        = string
}

variable "subnets" {
  type = list(object({
    name       = string
    cidr_block = string
    type       = string
    az         = string
  }))
}

variable "instances" {
  type = list(object({
    name   = string
    subnet = string
    type   = string
  }))
}

variable "security_rules" {
  description = "List of security rules"
  type = list(object({
    name        = string
    description = string
    port        = number
    protocol    = string
    cidr_blocks = list(string)
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
