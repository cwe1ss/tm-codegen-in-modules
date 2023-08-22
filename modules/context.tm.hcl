# generate_hcl only works in the context of a stack (https://terramate.io/docs/cli/code-generation/),
# so we have to use generate_file with "root" context instead.
# With a "root"-context, the file path needs to be absolute though, so we always need to specify
# the full path for each module.
# To mimic the "Hierarchical Code Generation" within stacks, we define one entry per module here.
# The alternative would be to have a separate context.tm.hcl file within each module.

generate_file "/modules/iam/_generated_context.tf" {
  context = root
  content = tm_file("/modules/context.tf")
}

generate_file "/modules/network/_generated_context.tf" {
  context = root
  content = tm_file("/modules/context.tf")
}
