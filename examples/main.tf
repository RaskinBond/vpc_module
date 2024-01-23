module "ntier-vpc" {

    source          = "git::https://github.com/RaskinBond/vpc_module.git"
    default_details = {
      name          = "from-tf"
      region        = "ap-south-1"
    }
    vpc_details     = {
      name          = "vpc"
      cidr_block    = "10.10.0.0/16"
    }
    subnet_details {
      availability_zone = [ "ap-south-1a", "ap-south-1c" ]
    }
}

output "total_subnets" {
    value           = length(module.vpc_module.subnet_details)
}