variable "instances" {
  type = list(object({
    ami_id            = string
    instance_type     = string
    security_group_id = string
    public_subnet_id  = string
    name              = string
  }))
}

variable "vpc_cidr_block" {
  type = string
}


variable "subnets" {
  type = list(object({
    name       = string
    cidr_block = string
    type       = string
  }))
}

variable "ami" {
  type = string
}
