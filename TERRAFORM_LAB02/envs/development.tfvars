# ==============================================
#
# =========== TERRAFORM FILE START =============
#
# ==============================================
#
# Created By: Hossam Mahmoud
# Date: 2025-03-04
# Filename: development.tfvars
# Description: 
# Version: 1.0.0
# Copyright (c) 2025 Hossam. All rights reserved.
#
# ==============================================
#
# ====== TERRAFORM IMPLEMENTATION START ======
#
# ==============================================

aws_region = "us-east-1"
vpc_name   = "hosa-vpc-terraform"
vpc_cidr   = "10.0.0.0/16"

subnets = [
  {
    name       = "hosa-PubSubnet-1"
    cidr_block = "10.0.0.0/24"
    type       = "public"
    az         = "a"
  },
  {
    name       = "hosa-PubSubnet-2"
    cidr_block = "10.0.1.0/24"
    type       = "public"
    az         = "a"
  }
]

instances = [
  {
    name          = "app-server-1"
    instance_type = "t2.micro"
    subnet_name   = "hosa-PubSubnet-1"
  }
]



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
