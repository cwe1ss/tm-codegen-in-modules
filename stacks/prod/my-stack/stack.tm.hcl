stack {
  name = "my-stack"
  id   = "bc8b2da2-1d8b-4acd-9e87-08066ec76547"
}

generate_hcl "main.tf" {
  content {

    module "iam" {
      source = "../../../modules/iam"

      global_prefix = global.global_prefix
      delimiter     = global.delimiter

      some_iam_specific_variable = "dummy"
    }

    module "network" {
      source = "../../../modules/network"

      global_prefix = global.global_prefix
      delimiter     = global.delimiter

      some_network_specific_variable = "dummy"
    }
  }
}
