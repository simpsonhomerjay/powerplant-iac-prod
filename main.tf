provider "aws" {
        region = var.region
}

module "network-module" {
        source = "github.com/newhopemusician/terraform-powerplant-network-module"
}

module "infa-module" {
        source = "github.com/newhopemusician/terraform-powerplant-infra-module"

        subnetid = module.network-module.subnetid
        sgid = module.network-module.sgid
        insttype = var.insttype
}
