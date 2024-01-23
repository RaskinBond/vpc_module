module "ntier-vpc" {

    source          = "git::https://github.com/RaskinBond/vpc_module.git"
    default_details = {
      name          = "from-tf"
      region        = "ap-south-2"
    }
    vpc_details     = {
      name          = "vpc"
      cidr_block    = "10.10.0.0/16"
    }
    subnet_details {
      availability_zone = [ "ap-south-2a", "ap-south-2b", "ap-south-2c" ]
    }
    subnet_tags {
      tags = [ "public_subnet", "private_subnet" ]
    }
    public_routes {
      
    }
}

output "total_subnets" {
    value           = module.my-vnet.subnet_counts
}