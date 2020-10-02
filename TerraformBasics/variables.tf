variable "region"{
    type =string
    default = "us-east-2"
}
variable "ami_type"{
    default = {us-east-2="ami-0603cbe34fd08cb81",us-east-1="ami-0c94855ba95c71c99"}
    type = map(string)
}

# Terraform 0.11 and earlier required type constraints to be given in quotes,
# but that form is now deprecated and will be removed in a future version of
# Terraform. To silence this warning, remove the quotes around "list" and write
# list(string) instead to explicitly indicate that the list elements are strings.

variable "mytag"{
    type =  list(string)
    default = ["Test instance","Using Terraform"]
}

variable "env"{
    type =string
    default ="test"
}

variable "instance-type"{
    default = {test = "t2.micro",dev = "t2.medium"}
    type = map(string)
}