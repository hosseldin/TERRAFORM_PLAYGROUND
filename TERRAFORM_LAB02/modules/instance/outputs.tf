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

output "instance_ids" {
<<<<<<< HEAD
  value = aws_instance.instance[*].id
=======
  value = aws_instance.instances[*].id
>>>>>>> ea8631a403d5a4e5e6039c69f42de322418f6aa7
}




<<<<<<< HEAD

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
