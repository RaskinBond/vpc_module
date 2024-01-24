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
        name        = "tf-vpc"
        cidr_block  = "10.10.0.0/16"
    }
}

variable "web_subnet_tags" {
    type            = list(string)
    default         = [ "web1", "web2" ]
}

# variable "public_routes" {
#     type            = list(string)
#     default         = [ "webrt1", "webrt2" ]
# }

variable "webserver_info" {
    type                        = object({
        name                    = string
        key_name                = string
        instance_type           = string
        public_ip_enabled       = bool        
    })
    default                     = {
        name                    = "webservers"
        key_name                = "from_tf"
        instance_type           = "t3.micro"
        public_ip_enabled       = true
    }
}