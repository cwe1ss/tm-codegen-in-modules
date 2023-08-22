stack {
  name = "my-stack"
  id   = "3cb4fa1c-1a88-4387-b3b0-9cc7f99a066e"
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
