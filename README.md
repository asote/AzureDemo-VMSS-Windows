# AzureDemo-VMSS-Windows
Azure Virtual Machine Scale Set -Windows VMs using Terraform v0.11.1 and some modules from Terraform module registry.

Run Terraform init to download modules before any other Terraform commands.

This will create a resource group containing a vnet, 1 subnet, 1 Internet load balancer, a virtual machine scale set with 2 Windows instances configured with IIS and a Windows jumbox

