variable "default_details" {
    type            = object({
        name        = string
        region      = string
    })
    default         = {
        name        = "from-tf"
        region      = "ap-south-2"
    }
}

variable "vpc_details" {
    type            = object({
        name        = string
        cidr_block  = string
    })
    default         = {
        name        = "tf_vpc"
        cidr_block  = "10.10.0.0/16"
    }
}

variable "subnet_details" {
    type            = list(string)
    default         = [ "ap-south-2a", "ap-south-2c" ]
}

variable "subnet_tags" {
    type            = list(string)
    default         = [ "subnet-1", "subnet-2" ]
}

variable "public_routes" {
    type            = list(string)
    default         = [ "webrt1", "webrt2" ]
}

variable "webserver_info" {
    type                        = object({
        count                   = string
        name                    = string
        key_name                = string
        instance_type           = string
        public_ip_enabled       = bool        
    })
    default                     = {
        count                   = "2"
        name                    = "webservers"
        key_name                = "from_tf"
        instance_type           = "t3.micro"
        public_ip_enabled       = true
    }
}