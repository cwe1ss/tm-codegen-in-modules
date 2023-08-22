# A file with common variables that may be used by all the modules
# Based on the concept of Cloud Posse: https://github.com/cloudposse/terraform-null-label/blob/main/exports/context.tf

# This file should be generated somehow in each module

variable "global_prefix" {
  type = string
}

variable "delimiter" {
  type = string
}
