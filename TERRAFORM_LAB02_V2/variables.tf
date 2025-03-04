variable "instances" {
  type = list(object({
    ami_id            = string
    instance_type     = string
    security_group_id = string
    public_subnet_id  = string
    name              = string
  }))
}
