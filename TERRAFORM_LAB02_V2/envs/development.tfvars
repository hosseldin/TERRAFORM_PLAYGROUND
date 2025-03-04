# Development environment variables


instances = [
  {
    ami_id            = "ami-04b4f1a9cf54c11d0"
    instance_type     = "t2.micro"
    security_group_id = "sg-12345678"
    # public_subnet_id  = "subnet-87654321"
    name = "web-server-1"
  },
  {
    ami_id            = "ami-04b4f1a9cf54c11d0"
    instance_type     = "t2.micro"
    security_group_id = "sg-23456789"
    # public_subnet_id  = "subnet-76543210"
    name = "web-server-2"
  }
]




# ami_id = "ami-04b4f1a9cf54c11d0"
# instance_type = "t2.micro"
# vpc_id = "vpc-xxxxxxxx"
# security_group_id = "sg-xxxxxxxx"
# public_subnet_id = "subnet-xxxxxxxx"
