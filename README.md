# AzureDemo-VMSS-Windows
Azure Virtual Machine Scale Set -Windows VMs using Terraform v0.11.1 and some modules from Terraform module registry.

Run Terraform init to download modules before any other Terraform commands.

This will create a resource group containing a vnet, 1 subnet, 1 Internet load balancer, a virtual machine scale set with 2 Windows instances configured with IIS and a Windows jumbox.

Note:
To clear the following error:

module.windowsservers.output.public_ip_address: Resource 'azurerm_public_ip.vm' does not have attribute 'ip_address' for variable 'azurerm_public_ip.vm.*.ip_address'

Set environment variable TF_WARN_OUTPUT_ERRORS=1. This was added in Terraform 0.11.1 and referenced by https://github.com/hashicorp/terraform/blob/v0.11.2/CHANGELOG.md#0111-november-30-2017.

