# Terraform Module Output Example

This repository contains example code on how to pass output from one Terraform module to another. The example uses a module to create a storage account and output the dynamically generated name to the main module. The main module then passes the storage account name to a module that creates a container in the storage account. The container module outputs the container name back to the main module, which outputs both names when Terraform completes applying the configuration.

You can read the blog post behind this example here:

[Jeff Brown Tech | Mastering Terraform Module Output](https://jeffbrown.tech/terraform-module-output/)