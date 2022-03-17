targetScope = 'subscription'
var rgname = 'scenario3-rg'

module mlWorkspace 'br/modules:microsoft.machinelearningservices.workspaces:latest' = {
  scope: resourceGroup(rgname)
  name: 'scenario3-cr'
  params: {
    name: 'scenario2-mlWorkspace'
    associatedApplicationInsightsResourceId: ''
    associatedKeyVaultResourceId: ''
    associatedStorageAccountResourceId: ''
    sku: 'Basic'
  }
}
