provider "aws" {
        region = var.region
}

module "network-module" {
        source  = "tf.lnxservices.com/springfieldpower-2024/network-module/powerplant"
        version = "0.0.1"
}

module "infra-module" {
        source  = "tf.lnxservices.com/springfieldpower-2024/infra-module/powerplant"
        version = "0.0.1"
        
        subnetid = module.network-module.subnetid
        sgid = module.network-module.sgid
        insttype = var.insttype
}
