# Web Site Config `[Microsoft.Web/sites/slots/config]`

This module deploys a site config resource.

## Resource Types

| Resource Type | API Version |
| :-- | :-- |
| `Microsoft.Web/sites/slots/config` | 2021-03-01 |

## Parameters

| Parameter Name | Type | Default Value | Possible Values | Description |
| :-- | :-- | :-- | :-- | :-- |
| `appInsightId` | string |  |  | Optional. Resource ID of the app insight to leverage for this resource. |
| `appName` | string |  |  | Required. Name of the site parent resource. |
| `cuaId` | string |  |  | Optional. Customer Usage Attribution ID (GUID). This GUID must be previously registered. |
| `functionsExtensionVersion` | string | `~3` |  | Optional. Version of the function extension. |
| `functionsWorkerRuntime` | string |  | `[dotnet, node, python, java, powershell, ]` | Optional. Runtime of the function worker. |
| `name` | string |  | `[appsettings]` | Required. Name of the site config. |
| `slotName` | string |  |  | Required. Name of the slot parent resource. |
| `storageAccountId` | string |  |  | Optional. Required if app of kind functionapp. Resource ID of the storage account to manage triggers and logging function executions. |

## Outputs

| Output Name | Type | Description |
| :-- | :-- | :-- |
| `name` | string | The name of the slot config. |
| `resourceGroupName` | string | The resource group the slot config was deployed into. |
| `resourceId` | string | The resource ID of the slot config. |

## Template references

- ['sites/slots/config' Parent Documentation](https://docs.microsoft.com/en-us/azure/templates/Microsoft.Web/sites)