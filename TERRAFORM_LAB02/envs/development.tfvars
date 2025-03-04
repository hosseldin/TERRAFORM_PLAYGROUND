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
<<<<<<< HEAD
aws_region = "us-east-1"
vpc_name   = "hosa-vpc-terraform"
vpc_cidr   = "10.0.0.0/16"
=======

# Variable for the VPC
region   = "us-east-1"
vpc_name = "hosa-vpc-terraform"
vpc_cidr = "10.0.0.0/16"
>>>>>>> ea8631a403d5a4e5e6039c69f42de322418f6aa7

subnet_configs = {
  "public-subnet-1" = {
    cidr_block = "10.0.1.0/24"
    az         = "us-east-1a"
    is_public  = true
  }
  "private-subnet-1" = {
    cidr_block = "10.0.2.0/24"
    az         = "us-east-1a"
    is_public  = false
  }
}

security_rules = [
  {
    name        = "allow-ssh"
    description = "Allow SSH access"
    port        = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  },
  {
    name        = "allow-http"
    description = "Allow HTTP access"
    port        = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
]

<<<<<<< HEAD
=======

>>>>>>> ea8631a403d5a4e5e6039c69f42de322418f6aa7
instances = [
  {
    name          = "app-server-1"
    ami           = "ami-04b4f1a9cf54c11d0"
    instance_type = "t2.micro"
    subnet_name   = "public-subnet-1"
    security_name = "web-sg"
  }
]

<<<<<<< HEAD
ingress_rules = [
  {
    name        = "allow-all-ingress"
    description = "Allow all inbound traffic"
    port        = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
]

egress_rules = [
  {
    name        = "allow-all-egress"
    description = "Allow all outbound traffic"
    port        = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
]


=======
# instances = [
#   {
#     name          = "app-server-1",
#     ami           = "ami-04b4f1a9cf54c11d0",
#     instance_type = "t2.micro"
#   },
#   {
#     name          = "app-server-2",
#     ami           = "ami-04b4f1a9cf54c11d0",
#     instance_type = "t2.micro"
#   }
# ]
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
