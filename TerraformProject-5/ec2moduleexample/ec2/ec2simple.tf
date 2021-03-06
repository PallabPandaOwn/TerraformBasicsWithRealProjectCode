resource "aws_instance" "ec2simple"{
name = var.name

ami = var.ami

instance_type = var.instance_type

subnet_id = var.subnet_id

vpc_security_group_ids = var.vpc_security_group_ids

associate_public_ip_address = var.associate_public_ip_address
}