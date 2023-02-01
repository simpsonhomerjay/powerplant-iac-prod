provider "aws" {
        region = "us-east-2"
}

module "network-module" {
        source = "github.com/newhopemusician/terraform-powerplant-network-module"
}

module "infa-module" {
        source = "github.com/newhopemusician/terraform-powerplant-infra-module"

        subnetid = module.network-module.subnetid
        sgid = module.network-module.sgid
        insttype = "t2.small"
}
