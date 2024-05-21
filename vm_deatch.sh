#!/bin/bash

# Prompt the user for the resource group and virtual machine name
read -p "Enter the resource group name: " RESOURCE_GROUP
read -p "Enter the virtual machine name: " VM_NAME

# Retrieve the VM resource ID
RESOURCE_ID=$(az vm show --resource-group "$RESOURCE_GROUP" --name "$VM_NAME" --query id --output tsv)

# Check if RESOURCE_ID is not empty
if [ -z "$RESOURCE_ID" ]; then
  echo "Failed to retrieve the resource ID. Please check the resource group and virtual machine name."
  exit 1
fi

# Update the network interface delete option
az resource update --ids "$RESOURCE_ID" --set 'properties.networkProfile.networkInterfaces[0].properties.deleteOption=Detach'

# Update the OS disk delete option
az resource update --ids "$RESOURCE_ID" --set 'properties.storageProfile.osDisk.deleteOption=Detach'

echo "Resource update completed successfully."
