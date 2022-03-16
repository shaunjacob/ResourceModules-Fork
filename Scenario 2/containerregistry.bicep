targetScope = 'subscription'
var rgname = 'scenario2-rg'

module containerRegistry '../arm/Microsoft.ContainerRegistry/registries/deploy.bicep' = {
  scope: resourceGroup(rgname)
  name: 'scenario2-cr'
  params: {
    name: 'scenario2cr'
    acrAdminUserEnabled: true
    acrSku: 'Basic'
  }
}

module containerRegistryDNS '../arm/Microsoft.Network/privateDnsZones/deploy.bicep' = {
  scope: resourceGroup(rgname)
  name: 'container-registry-dns'
  params: {
    name: 'privatelink.azurecr.io'
    virtualNetworkLinks: [
      {
        virtualNetworkResourceId: vnet.outputs.resourceId
      }
    ]
  }
}

module containerRegistryPEC '../arm/Microsoft.Network/privateEndpoints/deploy.bicep' = {
  scope: resourceGroup(rgname)
  name: 'container-registry-pec'
  params: {
    groupId: [
      containerRegistry
    ]
    privateDnsZoneGroups: [
      {
        privateDnsResourceIds: [
          containerRegistryDNS.outputs.resourceId
        ]
        privateEndpointName: 'container-registry-pec'
      }
    ]
    name: 'container-registry-pec'
    serviceResourceId: containerRegistry.outputs.resourceId
    targetSubnetResourceId: vnet.outputs.subnetResourceIds[1]
  }
}
