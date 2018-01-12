# AzureDemo-VMSS-Windows
Azure Virtual Machine Scale Set -Windows VMs using Terraform v0.11.1 and some modules from Terraform module registry.

Run Terraform init to download modules before any other Terraform commands.

This will create a resource group containing a vnet, 1 subnet, 1 Internet load balancer, a virtual machine scale set with 2 Windows instances configured with IIS and a Windows jumbox.

IIS is configured with an ASP.Net application to run a CPU load test. Enable auto scaling in Azure portal and create a scale condition, for example:
* Scale out: when cpu usage is greater than 50% for 5 minutes while sampling every 1 minute, increase my vm count by 1 with a cool down period of 5 minutes.
* Scale in: when cpu usage is less than 40% for 5 minutes while sampling every 1 minute, decrease my vm count by 1.


# Note:
To clear the following error:

module.windowsservers.output.public_ip_address: Resource 'azurerm_public_ip.vm' does not have attribute 'ip_address' for variable 'azurerm_public_ip.vm.*.ip_address'

Set environment variable TF_WARN_OUTPUT_ERRORS=1. This was added in Terraform 0.11.1 and referenced by https://github.com/hashicorp/terraform/blob/v0.11.2/CHANGELOG.md#0111-november-30-2017.

