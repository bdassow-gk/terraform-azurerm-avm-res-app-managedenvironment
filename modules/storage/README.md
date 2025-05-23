<!-- BEGIN_TF_DOCS -->
# Azure Container Apps Managed Environment Storage Module

This module is used to create storage for a Container Apps Environment.

## Usage

```terraform
module "avm-res-app-managedenvironment-storage" {
  source = "Azure/avm-res-app-managedenvironment/azurerm//modules/storage"

  managed_environment = {
    resource_id = "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/myResourceGroup/providers/Microsoft.App/managedEnvironments/myEnv"
  }

  account_name = azurerm_storage_account.this.name
  share_name   = azurerm_storage_share.this.name
  access_key   = azurerm_storage_account.this.primary_access_key
  access_mode  = "ReadOnly"
}
```

<!-- markdownlint-disable MD033 -->
## Requirements

The following requirements are needed by this module:

- <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) (>= 1.3.0)

- <a name="requirement_azapi"></a> [azapi](#requirement\_azapi) (>= 1.13, < 3)

## Providers

The following providers are used by this module:

- <a name="provider_azapi"></a> [azapi](#provider\_azapi) (>= 1.13, < 3)

## Resources

The following resources are used by this module:

- [azapi_resource.this](https://registry.terraform.io/providers/azure/azapi/latest/docs/resources/resource) (resource)

<!-- markdownlint-disable MD013 -->
## Required Inputs

The following input variables are required:

### <a name="input_access_key"></a> [access\_key](#input\_access\_key)

Description: The access key for the Azure file storage.

Type: `string`

### <a name="input_account_name"></a> [account\_name](#input\_account\_name)

Description: The account name for the Azure file storage.

Type: `string`

### <a name="input_managed_environment"></a> [managed\_environment](#input\_managed\_environment)

Description: The storage component resource.

Type:

```hcl
object({
    resource_id = string
  })
```

### <a name="input_name"></a> [name](#input\_name)

Description: The name of the storage resource.

Type: `string`

### <a name="input_share_name"></a> [share\_name](#input\_share\_name)

Description: The share name for the Azure file storage.

Type: `string`

## Optional Inputs

The following input variables are optional (have default values):

### <a name="input_access_mode"></a> [access\_mode](#input\_access\_mode)

Description: The access mode for the Azure file storage.

Type: `string`

Default: `"ReadOnly"`

### <a name="input_timeouts"></a> [timeouts](#input\_timeouts)

Description:  - `create` - (Defaults to 30 minutes) Used when creating the storage component.
 - `delete` - (Defaults to 30 minutes) Used when deleting the storage component.
 - `read` - (Defaults to 5 minutes) Used when retrieving the storage component.
 - `update` - (Defaults to 30 minutes) Used when updating the storage component.

Type:

```hcl
object({
    create = optional(string)
    delete = optional(string)
    read   = optional(string)
    update = optional(string)
  })
```

Default: `null`

## Outputs

The following outputs are exported:

### <a name="output_resource_id"></a> [resource\_id](#output\_resource\_id)

Description: The resource ID of the storage resource.

## Modules

No modules.

<!-- markdownlint-disable-next-line MD041 -->
## Data Collection

The software may collect information about you and your use of the software and send it to Microsoft. Microsoft may use this information to provide services and improve our products and services. You may turn off the telemetry as described in the repository. There are also some features in the software that may enable you and Microsoft to collect data from users of your applications. If you use these features, you must comply with applicable law, including providing appropriate notices to users of your applications together with a copy of Microsoft’s privacy statement. Our privacy statement is located at <https://go.microsoft.com/fwlink/?LinkID=824704>. You can learn more about data collection and use in the help documentation and our privacy statement. Your use of the software operates as your consent to these practices.
<!-- END_TF_DOCS -->