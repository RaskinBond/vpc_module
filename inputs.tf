variable "default_details" {
    type         = object({
        name     = string
        region   = string
    })
    default      = {
        name     = "fromtf"
        region   = "ap-south-2"
    }
}

variable "vpc_details" {
    type         = object({
        name     = string
        cidr_block = string
    })
    default      = {
        name     = "tf_vpc"
        cidr_block = "10.10.0.0/16"
    }
}

variable "subnet_details" {
    type                  = object({
        name              = string
        availability_zone = string
    })
    default               = {
        name              = "value"
    }
}

variable "subnet_tags" {
    type        = list(string)
    default     = [ "public_subnet", "private_subnet" ]
}

variable "public_routes" {
    type    = list(string)
    default = [ "webrt1", "webrt2" ]
}