# PowerBi Dashboard
The idea of this is that it gives an overview of Tenant Data required for a Tenant To Tenant migration. Future additions will include Teams and Intune, other services may also be added as time allows.
## Examples
Data Overview
![Data Overview Screenshot](/PowerBi/Example%20Images/DataOverview.png)
Exchange Online
![Data Overview Screenshot](/PowerBi/Example%20Images/ExchangeOnline.png)
OneDrive for Business
![Data Overview Screenshot](/PowerBi/Example%20Images/OneDrive.png)
SharePoint Online
![Data Overview Screenshot](/PowerBi/Example%20Images/SharePointOnline.png)
Devices
![Data Overview Screenshot](/PowerBi/Example%20Images/EntraDevices.png)
## Gathering Data
Data is gathered both via script and manual exports from admin portals
### Scripted
Gathering data is currently mostly done using the following commands from the M365Reporting PowerShell Module. 
- Export-M365RMailboxSizes
- Export-M365ROneDriveUsageReport
- Export-M365RUserLicenceBreakdown
### Other data sources
These are manual export from the relevant Admin Portal
- Users are gathered by exporting from the Entra Admin Portal (subject to change)
- Devices are gathered by exporting from the Entra Admin Portal (subject to change)
- SharePoint Online data is exported from the Active Sites blade within the Tenant's SharePoint Admin Portal (due to additional fields not accessible via the PnP.PowerShell module)
### Data Locations
Data is put into the following folders: 

- Entra Users - Entra/Users
- Entra Devices - Entra/Devices
- License Data - Licenses
- Mailbox Data - EXO
- OneDrive Data - O4B
- SharePoint Data - SPO

