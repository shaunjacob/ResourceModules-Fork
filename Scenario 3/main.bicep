targetScope = 'subscription'
var rgname = 'scenario3-rg'

module scenario3rg '../arm/Microsoft.Resources/resourceGroups/deploy.bicep' = {
  name: rgname
  params: {
    name: 'scenario3-rg'
    // location: 'centralus'
  }
}
