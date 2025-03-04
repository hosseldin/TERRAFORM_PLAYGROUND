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

resource "aws_instance" "ec2" {
  count                  = length(var.instances) # Creates instances based on list length
  ami                    = var.instances[count.index].ami_id
  instance_type          = var.instances[count.index].instance_type
  vpc_security_group_ids = [var.instances[count.index].security_group_id]
  subnet_id              = var.instances[count.index].public_subnet_id

  tags = {
    Name = var.instances[count.index].name
  }
}



# resource "aws_instance" "ec2" {
#   ami                    = var.ami_id
#   instance_type          = var.instance_type
#   vpc_security_group_ids = [var.security_group_id]
#   subnet_id              = var.public_subnet_id
#   tags = {
#     Name = "ec2"
#   }
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
