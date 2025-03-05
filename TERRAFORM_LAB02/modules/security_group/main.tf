# ==============================================
#
# =========== TERRAFORM FILE START =============
#
# ==============================================
#
# Created By: Hossam Mahmoud
# Date: 2025-03-03
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

resource "aws_security_group" "public-sg" {
  vpc_id = var.vpc_id
  name   = "Allow SSH"
}

resource "aws_vpc_security_group_ingress_rule" "pub_ssh_ipv4" {
  security_group_id = aws_security_group.public-sg.id
  cidr_ipv4         = "0.0.0.0/0"
  from_port         = 22
  ip_protocol       = "tcp"
  to_port           = 22
}

resource "aws_security_group" "private-sg" {
  name        = "allow ssh private"
  description = "Allow ssh inbound traffic for only vpc cidr"
  vpc_id      = aws_vpc.main.id

  tags = {
    Name = "allow_ssh_private"
  }
}

resource "aws_vpc_security_group_ingress_rule" "priv_ssh_ipv4" {
  security_group_id = aws_security_group.private-sg.id
  cidr_ipv4         = aws_vpc.main.cidr_block
  from_port         = 22
  ip_protocol       = "tcp"
  to_port           = 22
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
