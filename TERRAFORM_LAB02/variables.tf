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
<<<<<<< HEAD
variable "aws_region" {
  description = "The AWS region to deploy resources"
  type        = string
}

variable "vpc_name" {
  description = "Name of the VPC"
  type        = string
}

=======

locals {
  default = terraform.workspace
}

variable "region" {
  description = "The AWS region to deploy resources in"
  type        = string
}


variable "vpc_name" {
  description = "The name of the VPC"
  type        = string
}


# Variable for the VPC
>>>>>>> ea8631a403d5a4e5e6039c69f42de322418f6aa7
variable "vpc_cidr" {
  description = "CIDR block for the VPC"
  type        = string
}

<<<<<<< HEAD
variable "subnet_configs" {
  description = "Configuration for public and private subnets"
=======

variable "subnet_configs" {
  description = "Subnet configurations (public and private)"
>>>>>>> ea8631a403d5a4e5e6039c69f42de322418f6aa7
  type = map(object({
    cidr_block = string
    az         = string
    is_public  = bool
  }))
}

<<<<<<< HEAD
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

variable "instances" {
  description = "List of EC2 instances"
=======

variable "security_rules" {
  description = "Security group rules"
  type = map(object({
    ingress = list(object({
      from_port   = number
      to_port     = number
      protocol    = string
      cidr_blocks = list(string)
    }))
    egress = list(object({
      from_port   = number
      to_port     = number
      protocol    = string
      cidr_blocks = list(string)
    }))
  }))
}


variable "instances" {
  description = "List of instances"
>>>>>>> ea8631a403d5a4e5e6039c69f42de322418f6aa7
  type = list(object({
    name          = string
    ami           = string
    instance_type = string
    subnet_name   = string
    security_name = string
  }))
}

<<<<<<< HEAD
variable "ingress_rules" {
  description = "List of ingress rules"
  type = list(object({
    name        = string
    description = string
    port        = number
    protocol    = string
    cidr_blocks = list(string)
  }))
}

variable "egress_rules" {
  description = "List of egress rules"
  type = list(object({
    name        = string
    description = string
    port        = number
    protocol    = string
    cidr_blocks = list(string)
  }))
}

=======
>>>>>>> ea8631a403d5a4e5e6039c69f42de322418f6aa7










# Will create subnets using for_each
# variable "subnets" {
#   description = "List of Subnets"
#   type = list(object({
#     name              = string
#     cidr_block        = string
#     availability_zone = string
#     type              = string
#   }))
# }


# Won't need variables for igw , route table, route, since they are tied to the vpc

# Variable for the EC2 Instance type
# variable "instances" {
#   description = "List of instances to create"
#   type = list(object({
#     name          = string
#     ami           = string
#     instance_type = string
#     subnet_ids    = list(string)
#   }))
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
