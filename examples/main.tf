module "my-vnet" {

    source          = "git::https://github.com/RAZKYN/vnet_module.git"
    az_rg           = {
      location      = "centralindia"
      name          = "fromtf"
    }
    vnet_details    = {
      name          = "vpc"
      address_space = [ "10.10.0.0/16" ]
    }
    subnet_prefixes = [ "10.10.0.0/24", "10.10.1.0/24", "10.10.2.0/24" ]
}

output "total_subnets" {
    value           = module.my-vnet.subnet_counts
}