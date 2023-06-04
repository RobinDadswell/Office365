#TODO: Update this to be capable of multiple language SKU translations
function Get-TabName
{
    [Cmdletbinding()]
    param
    (
[parameter (Mandatory = $true, Position = 0)][string]$LicenceName
    )

    $updatedLicenceName = $LicenceName.Replace('Dynamics 365', 'D365', 'OrdinalIgnoreCase').Replace('Microsoft 365', 'M365', 'OrdinalIgnoreCase').Replace('Office 365', 'O365', 'OrdinalIgnoreCase').Replace('Windows 365', 'W365', 'OrdinalIgnoreCase').Replace('Enterprise Mobility + Security', 'EM+S', 'OrdinalIgnoreCase').Replace('Microsoft Teams', 'Teams', 'OrdinalIgnoreCase').Replace('Azure Active Directory', 'AAD', 'OrdinalIgnoreCase').Replace('Microsoft Defender', 'Defender', 'OrdinalIgnoreCase').Replace('For EDU', 'EDU', 'OrdinalIgnoreCase')

    Write-Output $updatedLicenceName
}
