variable "name"{

    type = string
}

variable "ami"{
    
    type = string
}

variable "instance_type"{
    
    type = string
}

variable "subnet_id"{
    
    type = string
}

variable "vpc_security_group_ids"{
    
    type = list(string)
}

variable "associate_public_ip_address"{
    type = string
}
