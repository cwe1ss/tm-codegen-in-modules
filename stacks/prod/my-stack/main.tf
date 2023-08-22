// TERRAMATE: GENERATED AUTOMATICALLY DO NOT EDIT

module "iam" {
  delimiter                  = "-"
  global_prefix              = "corp-prod"
  some_iam_specific_variable = "dummy"
  source                     = "../../../modules/iam"
}
module "network" {
  delimiter                      = "-"
  global_prefix                  = "corp-prod"
  some_network_specific_variable = "dummy"
  source                         = "../../../modules/network"
}
