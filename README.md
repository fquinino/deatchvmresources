# Azure VM Resource Update Script

## Overview

This repository contains a powerful and versatile Bash script designed to streamline the process of updating Azure Virtual Machine (VM) resource properties. By automating the retrieval and update of VM resource IDs, this script eliminates manual steps, reduces the likelihood of errors, and enhances efficiency for Azure administrators.

## Script Features

- **Interactive Input**: Prompts the user to input the resource group and virtual machine names, ensuring flexibility and ease of use.
- **Automated Resource ID Retrieval**: Automatically fetches the resource ID for the specified VM, simplifying the process and eliminating the need for manual ID lookup.
- **Batch Updates**: Executes multiple resource update commands in sequence, ensuring consistent and accurate application of settings.
- **Error Handling**: Includes basic error handling to notify users if the resource ID cannot be retrieved.

## Usage

### Prerequisites

- Ensure you have the Azure CLI installed and configured on your machine. You can download and install it from [here](https://docs.microsoft.com/en-us/cli/azure/install-azure-cli).
- You must have appropriate permissions to view and update resources in the specified Azure subscription.

### Running the Script

1. **Clone the Repository**
   ```bash
   git clone https://github.com/yourusername/azure-vm-resource-update.git](https://github.com/fquinino/deatchvmresources.git
   cd deatchvmresources

2. **Make the Script Executable**
   ```bash
   chmod +x vm_deatch.sh

3. **Execute the Script**
   ```bash
   ./vm_deatch.sh

4. **Follow the Prompts**
  - Enter the resource group name when prompted.
  - Enter the virtual machine name when prompted.

5. **Example Output**
  Enter the resource group name: rg-labmovenw
  Enter the virtual machine name: vm-movenw
  Resource update completed successfully.

### Script Explanation

This script significantly enhances the efficiency and reliability of managing Azure VM resources by automating key steps:

- **Interactive Input**: The script prompts for user input, ensuring that it can be used in various environments and scenarios without hardcoded values.
- **Automated Retrieval**: By automatically fetching the VM resource ID, the script removes the need for users to manually look up and input this information, saving time and reducing potential for errors.
- **Batch Processing**: The script performs multiple updates in a single execution, ensuring that all required changes are applied consistently and quickly.
- **Error Handling**: Basic error handling ensures that users are informed if there are issues retrieving the resource ID, allowing them to take corrective action.

### Contribution

Contributions to improve this script are welcome. Feel free to fork this repository and submit pull requests.

