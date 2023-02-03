provider "aws" {
        region = var.region
}

module "network-module" {
        source  = "tf.lnxservices.com/springfieldpower-2024/network-module/powerplant"
}

module "infra-module" {
        source  = "tf.lnxservices.com/springfieldpower-2024/infra-module/powerplant"
        
        subnetid = module.network-module.subnetid
        sgid = module.network-module.sgid
        insttype = var.insttype
}
