#
# Module manifest for module 'Az.OperationalInsights'
#
# Generated by: Microsoft Corporation
#
# Generated on: 2022/9/2
#

@{

# Script module or binary module file associated with this manifest.
RootModule = 'Az.OperationalInsights.psm1'

# Version number of this module.
ModuleVersion = '3.2.0'

# Supported PSEditions
CompatiblePSEditions = 'Core', 'Desktop'

# ID used to uniquely identify this module
GUID = 'c0fd6ad6-f349-46a5-a57b-4e8aa07544a0'

# Author of this module
Author = 'Microsoft Corporation'

# Company or vendor of this module
CompanyName = 'Microsoft Corporation'

# Copyright statement for this module
Copyright = 'Microsoft Corporation. All rights reserved.'

# Description of the functionality provided by this module
Description = 'Microsoft Azure PowerShell - Operational Insights service cmdlets for Azure Resource Manager in Windows PowerShell and PowerShell Core.'

# Minimum version of the PowerShell engine required by this module
PowerShellVersion = '5.1'

# Name of the PowerShell host required by this module
# PowerShellHostName = ''

# Minimum version of the PowerShell host required by this module
# PowerShellHostVersion = ''

# Minimum version of Microsoft .NET Framework required by this module. This prerequisite is valid for the PowerShell Desktop edition only.
DotNetFrameworkVersion = '4.7.2'

# Minimum version of the common language runtime (CLR) required by this module. This prerequisite is valid for the PowerShell Desktop edition only.
# ClrVersion = ''

# Processor architecture (None, X86, Amd64) required by this module
# ProcessorArchitecture = ''

# Modules that must be imported into the global environment prior to importing this module
RequiredModules = @()

# Assemblies that must be loaded prior to importing this module
RequiredAssemblies = 'Microsoft.Azure.Management.OperationalInsights.dll', 
               'Microsoft.Azure.OperationalInsights.dll'

# Script files (.ps1) that are run in the caller's environment prior to importing this module.
# ScriptsToProcess = @()

# Type files (.ps1xml) to be loaded when importing this module
# TypesToProcess = @()

# Format files (.ps1xml) to be loaded when importing this module
FormatsToProcess = 'OperationalInsights.format.ps1xml'

# Modules to import as nested modules of the module specified in RootModule/ModuleToProcess
NestedModules = @()

# Functions to export from this module, for best performance, do not use wildcards and do not delete the entry, use an empty array if there are no functions to export.
FunctionsToExport = @()

# Cmdlets to export from this module, for best performance, do not use wildcards and do not delete the entry, use an empty array if there are no cmdlets to export.
CmdletsToExport = 'New-AzOperationalInsightsAzureActivityLogDataSource', 
               'New-AzOperationalInsightsCustomLogDataSource', 
               'Disable-AzOperationalInsightsLinuxCustomLogCollection', 
               'Disable-AzOperationalInsightsIISLogCollection', 
               'Enable-AzOperationalInsightsLinuxCustomLogCollection', 
               'Enable-AzOperationalInsightsIISLogCollection', 
               'Enable-AzOperationalInsightsLinuxSyslogCollection', 
               'Enable-AzOperationalInsightsLinuxPerformanceCollection', 
               'Disable-AzOperationalInsightsLinuxPerformanceCollection', 
               'New-AzOperationalInsightsWindowsPerformanceCounterDataSource', 
               'New-AzOperationalInsightsLinuxPerformanceObjectDataSource', 
               'New-AzOperationalInsightsLinuxSyslogDataSource', 
               'New-AzOperationalInsightsApplicationInsightsDataSource', 
               'Disable-AzOperationalInsightsLinuxSyslogCollection', 
               'New-AzOperationalInsightsWindowsEventDataSource', 
               'Get-AzOperationalInsightsSavedSearch', 
               'Get-AzOperationalInsightsSchema', 
               'New-AzOperationalInsightsComputerGroup', 
               'New-AzOperationalInsightsSavedSearch', 
               'Set-AzOperationalInsightsSavedSearch', 
               'Remove-AzOperationalInsightsSavedSearch', 
               'Get-AzOperationalInsightsDataSource', 
               'Remove-AzOperationalInsightsDataSource', 
               'Set-AzOperationalInsightsDataSource', 
               'Get-AzOperationalInsightsStorageInsight', 
               'Set-AzOperationalInsightsStorageInsight', 
               'New-AzOperationalInsightsStorageInsight', 
               'Remove-AzOperationalInsightsStorageInsight', 
               'Set-AzOperationalInsightsIntelligencePack', 
               'Get-AzOperationalInsightsIntelligencePack', 
               'Get-AzOperationalInsightsWorkspaceManagementGroup', 
               'Get-AzOperationalInsightsWorkspaceUsage', 
               'Get-AzOperationalInsightsWorkspaceSharedKey', 
               'Get-AzOperationalInsightsWorkspace', 
               'New-AzOperationalInsightsWorkspace', 
               'Remove-AzOperationalInsightsWorkspace', 
               'Set-AzOperationalInsightsWorkspace', 
               'Invoke-AzOperationalInsightsQuery', 
               'New-AzOperationalInsightsLinkedStorageAccount', 
               'Get-AzOperationalInsightsLinkedStorageAccount', 
               'Set-AzOperationalInsightsLinkedStorageAccount', 
               'Remove-AzOperationalInsightsLinkedStorageAccount', 
               'New-AzOperationalInsightsCluster', 
               'Get-AzOperationalInsightsCluster', 
               'Update-AzOperationalInsightsCluster', 
               'Remove-AzOperationalInsightsCluster', 
               'Get-AzOperationalInsightsLinkedService', 
               'Set-AzOperationalInsightsLinkedService', 
               'Remove-AzOperationalInsightsLinkedService', 
               'Get-AzOperationalInsightsDeletedWorkspace', 
               'Restore-AzOperationalInsightsWorkspace', 
               'Get-AzOperationalInsightsTable', 
               'Get-AzOperationalInsightsOperation', 
               'Get-AzOperationalInsightsDataExport', 
               'New-AzOperationalInsightsDataExport', 
               'Remove-AzOperationalInsightsDataExport', 
               'Update-AzOperationalInsightsDataExport', 
               'Get-AzOperationalInsightsOperationStatus', 
               'Update-AzOperationalInsightsWorkspaceSharedKey', 
               'New-AzOperationalInsightsPurgeWorkspace', 
               'Get-AzOperationalInsightsPurgeWorkspaceStatus', 
               'Get-AzOperationalInsightsAvailableServiceTier', 
               'New-AzOperationalInsightsRestoreTable', 
               'New-AzOperationalInsightsSearchTable', 
               'New-AzOperationalInsightsTable', 
               'Remove-AzOperationalInsightsTable', 
               'Update-AzOperationalInsightsTable', 
               'Invoke-AzOperationalInsightsMigrateTable'

# Variables to export from this module
# VariablesToExport = @()

# Aliases to export from this module, for best performance, do not use wildcards and do not delete the entry, use an empty array if there are no aliases to export.
AliasesToExport = 'New-AzOperationalInsightsAzureAuditDataSource', 
               'Get-AzOperationalInsightsIntelligencePacks', 
               'Get-AzOperationalInsightsWorkspaceManagementGroups', 
               'Get-AzOperationalInsightsWorkspaceSharedKeys'

# DSC resources to export from this module
# DscResourcesToExport = @()

# List of all modules packaged with this module
# ModuleList = @()

# List of all files packaged with this module
# FileList = @()

# Private data to pass to the module specified in RootModule/ModuleToProcess. This may also contain a PSData hashtable with additional module metadata used by PowerShell.
PrivateData = @{

    PSData = @{

        # Tags applied to this module. These help with module discovery in online galleries.
        Tags = 'Azure','ResourceManager','ARM','OperationalInsights'

        # A URL to the license for this module.
        LicenseUri = 'https://aka.ms/azps-license'

        # A URL to the main website for this project.
        ProjectUri = 'https://github.com/Azure/azure-powershell'

        # A URL to an icon representing this module.
        # IconUri = ''

        # ReleaseNotes of this module
        ReleaseNotes = '* Added new cmdlets for Table resource: ''New-AzOperationalInsightsRestoreTable'', ''New-AzOperationalInsightsSearchTable'', ''New-AzOperationalInsightsTable'',''Remove-AzOperationalInsightsTable'',''Update-AzOperationalInsightsTable'', ''Convert-AzOperationalInsightsMigrateTable''
* Added new property ''DefaultDataCollectionRuleResourceId'' to ''Set-AzOperationalInsightsWorkspace'' and to ''New-AzOperationalInsightsWorkspace'' cmdlets'

        # Prerelease string of this module
        # Prerelease = ''

        # Flag to indicate whether the module requires explicit user acceptance for install/update/save
        # RequireLicenseAcceptance = $false

        # External dependent modules of this module
        # ExternalModuleDependencies = @()

    } # End of PSData hashtable

 } # End of PrivateData hashtable

# HelpInfo URI of this module
# HelpInfoURI = ''

# Default prefix for commands exported from this module. Override the default prefix using Import-Module -Prefix.
# DefaultCommandPrefix = ''

}


# SIG # Begin signature block
# MIInsAYJKoZIhvcNAQcCoIInoTCCJ50CAQExDzANBglghkgBZQMEAgEFADB5Bgor
# BgEEAYI3AgEEoGswaTA0BgorBgEEAYI3AgEeMCYCAwEAAAQQH8w7YFlLCE63JNLG
# KX7zUQIBAAIBAAIBAAIBAAIBADAxMA0GCWCGSAFlAwQCAQUABCDQuXnPFiO63vpO
# sFylgo18ykLTow9TCN8AeWL/d9FpjqCCDYUwggYDMIID66ADAgECAhMzAAACzfNk
# v/jUTF1RAAAAAALNMA0GCSqGSIb3DQEBCwUAMH4xCzAJBgNVBAYTAlVTMRMwEQYD
# VQQIEwpXYXNoaW5ndG9uMRAwDgYDVQQHEwdSZWRtb25kMR4wHAYDVQQKExVNaWNy
# b3NvZnQgQ29ycG9yYXRpb24xKDAmBgNVBAMTH01pY3Jvc29mdCBDb2RlIFNpZ25p
# bmcgUENBIDIwMTEwHhcNMjIwNTEyMjA0NjAyWhcNMjMwNTExMjA0NjAyWjB0MQsw
# CQYDVQQGEwJVUzETMBEGA1UECBMKV2FzaGluZ3RvbjEQMA4GA1UEBxMHUmVkbW9u
# ZDEeMBwGA1UEChMVTWljcm9zb2Z0IENvcnBvcmF0aW9uMR4wHAYDVQQDExVNaWNy
# b3NvZnQgQ29ycG9yYXRpb24wggEiMA0GCSqGSIb3DQEBAQUAA4IBDwAwggEKAoIB
# AQDrIzsY62MmKrzergm7Ucnu+DuSHdgzRZVCIGi9CalFrhwtiK+3FIDzlOYbs/zz
# HwuLC3hir55wVgHoaC4liQwQ60wVyR17EZPa4BQ28C5ARlxqftdp3H8RrXWbVyvQ
# aUnBQVZM73XDyGV1oUPZGHGWtgdqtBUd60VjnFPICSf8pnFiit6hvSxH5IVWI0iO
# nfqdXYoPWUtVUMmVqW1yBX0NtbQlSHIU6hlPvo9/uqKvkjFUFA2LbC9AWQbJmH+1
# uM0l4nDSKfCqccvdI5l3zjEk9yUSUmh1IQhDFn+5SL2JmnCF0jZEZ4f5HE7ykDP+
# oiA3Q+fhKCseg+0aEHi+DRPZAgMBAAGjggGCMIIBfjAfBgNVHSUEGDAWBgorBgEE
# AYI3TAgBBggrBgEFBQcDAzAdBgNVHQ4EFgQU0WymH4CP7s1+yQktEwbcLQuR9Zww
# VAYDVR0RBE0wS6RJMEcxLTArBgNVBAsTJE1pY3Jvc29mdCBJcmVsYW5kIE9wZXJh
# dGlvbnMgTGltaXRlZDEWMBQGA1UEBRMNMjMwMDEyKzQ3MDUzMDAfBgNVHSMEGDAW
# gBRIbmTlUAXTgqoXNzcitW2oynUClTBUBgNVHR8ETTBLMEmgR6BFhkNodHRwOi8v
# d3d3Lm1pY3Jvc29mdC5jb20vcGtpb3BzL2NybC9NaWNDb2RTaWdQQ0EyMDExXzIw
# MTEtMDctMDguY3JsMGEGCCsGAQUFBwEBBFUwUzBRBggrBgEFBQcwAoZFaHR0cDov
# L3d3dy5taWNyb3NvZnQuY29tL3BraW9wcy9jZXJ0cy9NaWNDb2RTaWdQQ0EyMDEx
# XzIwMTEtMDctMDguY3J0MAwGA1UdEwEB/wQCMAAwDQYJKoZIhvcNAQELBQADggIB
# AE7LSuuNObCBWYuttxJAgilXJ92GpyV/fTiyXHZ/9LbzXs/MfKnPwRydlmA2ak0r
# GWLDFh89zAWHFI8t9JLwpd/VRoVE3+WyzTIskdbBnHbf1yjo/+0tpHlnroFJdcDS
# MIsH+T7z3ClY+6WnjSTetpg1Y/pLOLXZpZjYeXQiFwo9G5lzUcSd8YVQNPQAGICl
# 2JRSaCNlzAdIFCF5PNKoXbJtEqDcPZ8oDrM9KdO7TqUE5VqeBe6DggY1sZYnQD+/
# LWlz5D0wCriNgGQ/TWWexMwwnEqlIwfkIcNFxo0QND/6Ya9DTAUykk2SKGSPt0kL
# tHxNEn2GJvcNtfohVY/b0tuyF05eXE3cdtYZbeGoU1xQixPZAlTdtLmeFNly82uB
# VbybAZ4Ut18F//UrugVQ9UUdK1uYmc+2SdRQQCccKwXGOuYgZ1ULW2u5PyfWxzo4
# BR++53OB/tZXQpz4OkgBZeqs9YaYLFfKRlQHVtmQghFHzB5v/WFonxDVlvPxy2go
# a0u9Z+ZlIpvooZRvm6OtXxdAjMBcWBAsnBRr/Oj5s356EDdf2l/sLwLFYE61t+ME
# iNYdy0pXL6gN3DxTVf2qjJxXFkFfjjTisndudHsguEMk8mEtnvwo9fOSKT6oRHhM
# 9sZ4HTg/TTMjUljmN3mBYWAWI5ExdC1inuog0xrKmOWVMIIHejCCBWKgAwIBAgIK
# YQ6Q0gAAAAAAAzANBgkqhkiG9w0BAQsFADCBiDELMAkGA1UEBhMCVVMxEzARBgNV
# BAgTCldhc2hpbmd0b24xEDAOBgNVBAcTB1JlZG1vbmQxHjAcBgNVBAoTFU1pY3Jv
# c29mdCBDb3Jwb3JhdGlvbjEyMDAGA1UEAxMpTWljcm9zb2Z0IFJvb3QgQ2VydGlm
# aWNhdGUgQXV0aG9yaXR5IDIwMTEwHhcNMTEwNzA4MjA1OTA5WhcNMjYwNzA4MjEw
# OTA5WjB+MQswCQYDVQQGEwJVUzETMBEGA1UECBMKV2FzaGluZ3RvbjEQMA4GA1UE
# BxMHUmVkbW9uZDEeMBwGA1UEChMVTWljcm9zb2Z0IENvcnBvcmF0aW9uMSgwJgYD
# VQQDEx9NaWNyb3NvZnQgQ29kZSBTaWduaW5nIFBDQSAyMDExMIICIjANBgkqhkiG
# 9w0BAQEFAAOCAg8AMIICCgKCAgEAq/D6chAcLq3YbqqCEE00uvK2WCGfQhsqa+la
# UKq4BjgaBEm6f8MMHt03a8YS2AvwOMKZBrDIOdUBFDFC04kNeWSHfpRgJGyvnkmc
# 6Whe0t+bU7IKLMOv2akrrnoJr9eWWcpgGgXpZnboMlImEi/nqwhQz7NEt13YxC4D
# dato88tt8zpcoRb0RrrgOGSsbmQ1eKagYw8t00CT+OPeBw3VXHmlSSnnDb6gE3e+
# lD3v++MrWhAfTVYoonpy4BI6t0le2O3tQ5GD2Xuye4Yb2T6xjF3oiU+EGvKhL1nk
# kDstrjNYxbc+/jLTswM9sbKvkjh+0p2ALPVOVpEhNSXDOW5kf1O6nA+tGSOEy/S6
# A4aN91/w0FK/jJSHvMAhdCVfGCi2zCcoOCWYOUo2z3yxkq4cI6epZuxhH2rhKEmd
# X4jiJV3TIUs+UsS1Vz8kA/DRelsv1SPjcF0PUUZ3s/gA4bysAoJf28AVs70b1FVL
# 5zmhD+kjSbwYuER8ReTBw3J64HLnJN+/RpnF78IcV9uDjexNSTCnq47f7Fufr/zd
# sGbiwZeBe+3W7UvnSSmnEyimp31ngOaKYnhfsi+E11ecXL93KCjx7W3DKI8sj0A3
# T8HhhUSJxAlMxdSlQy90lfdu+HggWCwTXWCVmj5PM4TasIgX3p5O9JawvEagbJjS
# 4NaIjAsCAwEAAaOCAe0wggHpMBAGCSsGAQQBgjcVAQQDAgEAMB0GA1UdDgQWBBRI
# bmTlUAXTgqoXNzcitW2oynUClTAZBgkrBgEEAYI3FAIEDB4KAFMAdQBiAEMAQTAL
# BgNVHQ8EBAMCAYYwDwYDVR0TAQH/BAUwAwEB/zAfBgNVHSMEGDAWgBRyLToCMZBD
# uRQFTuHqp8cx0SOJNDBaBgNVHR8EUzBRME+gTaBLhklodHRwOi8vY3JsLm1pY3Jv
# c29mdC5jb20vcGtpL2NybC9wcm9kdWN0cy9NaWNSb29DZXJBdXQyMDExXzIwMTFf
# MDNfMjIuY3JsMF4GCCsGAQUFBwEBBFIwUDBOBggrBgEFBQcwAoZCaHR0cDovL3d3
# dy5taWNyb3NvZnQuY29tL3BraS9jZXJ0cy9NaWNSb29DZXJBdXQyMDExXzIwMTFf
# MDNfMjIuY3J0MIGfBgNVHSAEgZcwgZQwgZEGCSsGAQQBgjcuAzCBgzA/BggrBgEF
# BQcCARYzaHR0cDovL3d3dy5taWNyb3NvZnQuY29tL3BraW9wcy9kb2NzL3ByaW1h
# cnljcHMuaHRtMEAGCCsGAQUFBwICMDQeMiAdAEwAZQBnAGEAbABfAHAAbwBsAGkA
# YwB5AF8AcwB0AGEAdABlAG0AZQBuAHQALiAdMA0GCSqGSIb3DQEBCwUAA4ICAQBn
# 8oalmOBUeRou09h0ZyKbC5YR4WOSmUKWfdJ5DJDBZV8uLD74w3LRbYP+vj/oCso7
# v0epo/Np22O/IjWll11lhJB9i0ZQVdgMknzSGksc8zxCi1LQsP1r4z4HLimb5j0b
# pdS1HXeUOeLpZMlEPXh6I/MTfaaQdION9MsmAkYqwooQu6SpBQyb7Wj6aC6VoCo/
# KmtYSWMfCWluWpiW5IP0wI/zRive/DvQvTXvbiWu5a8n7dDd8w6vmSiXmE0OPQvy
# CInWH8MyGOLwxS3OW560STkKxgrCxq2u5bLZ2xWIUUVYODJxJxp/sfQn+N4sOiBp
# mLJZiWhub6e3dMNABQamASooPoI/E01mC8CzTfXhj38cbxV9Rad25UAqZaPDXVJi
# hsMdYzaXht/a8/jyFqGaJ+HNpZfQ7l1jQeNbB5yHPgZ3BtEGsXUfFL5hYbXw3MYb
# BL7fQccOKO7eZS/sl/ahXJbYANahRr1Z85elCUtIEJmAH9AAKcWxm6U/RXceNcbS
# oqKfenoi+kiVH6v7RyOA9Z74v2u3S5fi63V4GuzqN5l5GEv/1rMjaHXmr/r8i+sL
# gOppO6/8MO0ETI7f33VtY5E90Z1WTk+/gFcioXgRMiF670EKsT/7qMykXcGhiJtX
# cVZOSEXAQsmbdlsKgEhr/Xmfwb1tbWrJUnMTDXpQzTGCGYEwghl9AgEBMIGVMH4x
# CzAJBgNVBAYTAlVTMRMwEQYDVQQIEwpXYXNoaW5ndG9uMRAwDgYDVQQHEwdSZWRt
# b25kMR4wHAYDVQQKExVNaWNyb3NvZnQgQ29ycG9yYXRpb24xKDAmBgNVBAMTH01p
# Y3Jvc29mdCBDb2RlIFNpZ25pbmcgUENBIDIwMTECEzMAAALN82S/+NRMXVEAAAAA
# As0wDQYJYIZIAWUDBAIBBQCgga4wGQYJKoZIhvcNAQkDMQwGCisGAQQBgjcCAQQw
# HAYKKwYBBAGCNwIBCzEOMAwGCisGAQQBgjcCARUwLwYJKoZIhvcNAQkEMSIEIKN9
# 7mdptdQaoBJ50YIlqoDDqREPxOTIKjStVSB03zAeMEIGCisGAQQBgjcCAQwxNDAy
# oBSAEgBNAGkAYwByAG8AcwBvAGYAdKEagBhodHRwOi8vd3d3Lm1pY3Jvc29mdC5j
# b20wDQYJKoZIhvcNAQEBBQAEggEAa6GdN/BHMNmyFa9kIMhZZzgqnBuahNL1RKBv
# ACcZoR7FJNX/X0VaZSKtImnl1i7QG+ZInHnP0MZ3Plm9EQu11WQ0GxOAUADviarX
# OjfY/KDxMy2eo5ZBXE3ewpqJ6zY91auZU5KVvOkLTXs27nyzXv06WluVHimPsURl
# z2LtzmcjpVSWtHqEY99iliJMK3NRvtzfcHnqua5ZYuD5ZLZKKDWwzOmm523ZrKcW
# UVb5qIbifipRoF6CoL5grz8loZ/WXzR5u2JSjKrAVTTneq3Mq8sga5Qp2ctHW9yt
# EiQZXccAYJ9gOyQqFyLvJNfnAGfaqfuiy/1O5jLXSkb9FiS+D6GCFwswghcHBgor
# BgEEAYI3AwMBMYIW9zCCFvMGCSqGSIb3DQEHAqCCFuQwghbgAgEDMQ8wDQYJYIZI
# AWUDBAIBBQAwggFVBgsqhkiG9w0BCRABBKCCAUQEggFAMIIBPAIBAQYKKwYBBAGE
# WQoDATAxMA0GCWCGSAFlAwQCAQUABCBy77St8sFOaxVbAelrWoIwsSIAGe7YYhpJ
# V5NoM5/FIwIGYxFHBm4FGBMyMDIyMDkwMjA0Mzk1Mi4yMjdaMASAAgH0oIHUpIHR
# MIHOMQswCQYDVQQGEwJVUzETMBEGA1UECBMKV2FzaGluZ3RvbjEQMA4GA1UEBxMH
# UmVkbW9uZDEeMBwGA1UEChMVTWljcm9zb2Z0IENvcnBvcmF0aW9uMSkwJwYDVQQL
# EyBNaWNyb3NvZnQgT3BlcmF0aW9ucyBQdWVydG8gUmljbzEmMCQGA1UECxMdVGhh
# bGVzIFRTUyBFU046NDYyRi1FMzE5LTNGMjAxJTAjBgNVBAMTHE1pY3Jvc29mdCBU
# aW1lLVN0YW1wIFNlcnZpY2WgghFeMIIHEDCCBPigAwIBAgITMwAAAaQHz+OPo7pv
# 1gABAAABpDANBgkqhkiG9w0BAQsFADB8MQswCQYDVQQGEwJVUzETMBEGA1UECBMK
# V2FzaGluZ3RvbjEQMA4GA1UEBxMHUmVkbW9uZDEeMBwGA1UEChMVTWljcm9zb2Z0
# IENvcnBvcmF0aW9uMSYwJAYDVQQDEx1NaWNyb3NvZnQgVGltZS1TdGFtcCBQQ0Eg
# MjAxMDAeFw0yMjAzMDIxODUxMThaFw0yMzA1MTExODUxMThaMIHOMQswCQYDVQQG
# EwJVUzETMBEGA1UECBMKV2FzaGluZ3RvbjEQMA4GA1UEBxMHUmVkbW9uZDEeMBwG
# A1UEChMVTWljcm9zb2Z0IENvcnBvcmF0aW9uMSkwJwYDVQQLEyBNaWNyb3NvZnQg
# T3BlcmF0aW9ucyBQdWVydG8gUmljbzEmMCQGA1UECxMdVGhhbGVzIFRTUyBFU046
# NDYyRi1FMzE5LTNGMjAxJTAjBgNVBAMTHE1pY3Jvc29mdCBUaW1lLVN0YW1wIFNl
# cnZpY2UwggIiMA0GCSqGSIb3DQEBAQUAA4ICDwAwggIKAoICAQDAR44A+hT8vNT1
# IXDiFRoeGzkmqut+GPk41toTRfQZZ1sSyQhLjIlemBecemEzO09WSzOjZx9MIT8q
# Ys921WUZsIBsk1ESn1cjyfPUd1mmfxzL3ACWZwjIC/pjqcRPeIMECQ/6qPFKrjqw
# igmP33I3IcVfMjJHyKj+vR51n1tK2rZPiNhmRdiEhckbbxLsSb2nCBQxZEF49x/l
# 8vSB8zaqovoOeIkIzgDerN7OvJouq6r+vg/Qz1T4NXr+sKKyNxZWM6zywiLp7G7W
# Ld18N2hyjHwPkh/AleIqif3hGVD9bhSU+dDADzUJSMFhEWunHHElQeZjdmIB3/Mw
# 1KkFOJNvw1sPteIi5MK4DZX3Wd/Fd8ZsQvZmXPWJ8BXN9sYtHMz8zdeQvMImRCKg
# nXcW8IpnPtC7Tymp3UV5NoTH8INF6WWicQ3y04L2I1VOT104AddJoVgAP2KLIGwf
# Cs7wMVz56xJ2IN1y1pIAWfpTqx76orM5RQhkAvayj1RTwgrHst+elYX3F5b8ACWr
# gJO1dJy1U4MIv+SC8h33xLmWA568emvrJ6g0xy/2akbAeRx6tFwaP4uwVbjF50kl
# 5RQqNzp/CDpfCTikOAqyJa4valiWDMbEiArHKLYDg6GDjuJZl5bSjgdJdCAIRF8E
# kiiA+UAGvcE6SGoHmtoc4yOklGNVvwIDAQABo4IBNjCCATIwHQYDVR0OBBYEFOLQ
# E5+s+AgS9sWUHdI4zekp4yTCMB8GA1UdIwQYMBaAFJ+nFV0AXmJdg/Tl0mWnG1M1
# GelyMF8GA1UdHwRYMFYwVKBSoFCGTmh0dHA6Ly93d3cubWljcm9zb2Z0LmNvbS9w
# a2lvcHMvY3JsL01pY3Jvc29mdCUyMFRpbWUtU3RhbXAlMjBQQ0ElMjAyMDEwKDEp
# LmNybDBsBggrBgEFBQcBAQRgMF4wXAYIKwYBBQUHMAKGUGh0dHA6Ly93d3cubWlj
# cm9zb2Z0LmNvbS9wa2lvcHMvY2VydHMvTWljcm9zb2Z0JTIwVGltZS1TdGFtcCUy
# MFBDQSUyMDIwMTAoMSkuY3J0MAwGA1UdEwEB/wQCMAAwEwYDVR0lBAwwCgYIKwYB
# BQUHAwgwDQYJKoZIhvcNAQELBQADggIBAAlWHFDRDJck7jwwRoYmdVOePLLBeido
# PUBJVhG9nGeHS9PuRvO9tf4IkbUz74MUIQxeayQoxxo/JxUqjhPH52M/b4G9mHJW
# B75KCllCTg8Y4VkvktOmS0f5w0vOR3gwA9BRnbgAPNEO7xs5Jylto8aDR02++CkB
# DFolCtTNjwzfniEj1z4T7nRlRi2yBAJNRqI+VY820LiyoZtk5OGttq5F5HhPfIMj
# aIx5QYR22+53sd8xgUwRpFbcLdrne6jdq3KbiYbCf7y/9F2C7cjpO3kkGXX8ntE0
# 9f6o9fIklx7CFw4RzrkyqgYomraKOFJ8JO7hsjNJb9/Gba/mKWo0j/qdDxDER/UX
# X6ykZuGx1eQpjkyMwJnOPWGbeNIYZVcJQpRQODPs593Mi5hBsHzag+vd4Q+Vt73K
# Z4X98YWW1Vk1aSR9Qjxk5keMuVPZMcMrCvFZXwhUcGFGueuNCrICL9bSYRfS13pl
# iDxJ7sPSZ8x2d4ksOXW00l6fR5nTiSM7Dvv7Y0MGVgUhap2smhr92PMNSmIkCUvH
# CiYcJ4RoAT28mp/hOQ/U8mPXSpWdxYpLLcDOISmBhFJYN7amlhIpVsGvUmjXrTcY
# 0n4Goe/Nqs2400IcA4HOiX9OxdmpNGDJzSRR7AW9TT8O+3YZqPZIvL6yzgfvnehp
# tmf4w6QzkrLfMIIHcTCCBVmgAwIBAgITMwAAABXF52ueAptJmQAAAAAAFTANBgkq
# hkiG9w0BAQsFADCBiDELMAkGA1UEBhMCVVMxEzARBgNVBAgTCldhc2hpbmd0b24x
# EDAOBgNVBAcTB1JlZG1vbmQxHjAcBgNVBAoTFU1pY3Jvc29mdCBDb3Jwb3JhdGlv
# bjEyMDAGA1UEAxMpTWljcm9zb2Z0IFJvb3QgQ2VydGlmaWNhdGUgQXV0aG9yaXR5
# IDIwMTAwHhcNMjEwOTMwMTgyMjI1WhcNMzAwOTMwMTgzMjI1WjB8MQswCQYDVQQG
# EwJVUzETMBEGA1UECBMKV2FzaGluZ3RvbjEQMA4GA1UEBxMHUmVkbW9uZDEeMBwG
# A1UEChMVTWljcm9zb2Z0IENvcnBvcmF0aW9uMSYwJAYDVQQDEx1NaWNyb3NvZnQg
# VGltZS1TdGFtcCBQQ0EgMjAxMDCCAiIwDQYJKoZIhvcNAQEBBQADggIPADCCAgoC
# ggIBAOThpkzntHIhC3miy9ckeb0O1YLT/e6cBwfSqWxOdcjKNVf2AX9sSuDivbk+
# F2Az/1xPx2b3lVNxWuJ+Slr+uDZnhUYjDLWNE893MsAQGOhgfWpSg0S3po5GawcU
# 88V29YZQ3MFEyHFcUTE3oAo4bo3t1w/YJlN8OWECesSq/XJprx2rrPY2vjUmZNqY
# O7oaezOtgFt+jBAcnVL+tuhiJdxqD89d9P6OU8/W7IVWTe/dvI2k45GPsjksUZzp
# cGkNyjYtcI4xyDUoveO0hyTD4MmPfrVUj9z6BVWYbWg7mka97aSueik3rMvrg0Xn
# Rm7KMtXAhjBcTyziYrLNueKNiOSWrAFKu75xqRdbZ2De+JKRHh09/SDPc31BmkZ1
# zcRfNN0Sidb9pSB9fvzZnkXftnIv231fgLrbqn427DZM9ituqBJR6L8FA6PRc6ZN
# N3SUHDSCD/AQ8rdHGO2n6Jl8P0zbr17C89XYcz1DTsEzOUyOArxCaC4Q6oRRRuLR
# vWoYWmEBc8pnol7XKHYC4jMYctenIPDC+hIK12NvDMk2ZItboKaDIV1fMHSRlJTY
# uVD5C4lh8zYGNRiER9vcG9H9stQcxWv2XFJRXRLbJbqvUAV6bMURHXLvjflSxIUX
# k8A8FdsaN8cIFRg/eKtFtvUeh17aj54WcmnGrnu3tz5q4i6tAgMBAAGjggHdMIIB
# 2TASBgkrBgEEAYI3FQEEBQIDAQABMCMGCSsGAQQBgjcVAgQWBBQqp1L+ZMSavoKR
# PEY1Kc8Q/y8E7jAdBgNVHQ4EFgQUn6cVXQBeYl2D9OXSZacbUzUZ6XIwXAYDVR0g
# BFUwUzBRBgwrBgEEAYI3TIN9AQEwQTA/BggrBgEFBQcCARYzaHR0cDovL3d3dy5t
# aWNyb3NvZnQuY29tL3BraW9wcy9Eb2NzL1JlcG9zaXRvcnkuaHRtMBMGA1UdJQQM
# MAoGCCsGAQUFBwMIMBkGCSsGAQQBgjcUAgQMHgoAUwB1AGIAQwBBMAsGA1UdDwQE
# AwIBhjAPBgNVHRMBAf8EBTADAQH/MB8GA1UdIwQYMBaAFNX2VsuP6KJcYmjRPZSQ
# W9fOmhjEMFYGA1UdHwRPME0wS6BJoEeGRWh0dHA6Ly9jcmwubWljcm9zb2Z0LmNv
# bS9wa2kvY3JsL3Byb2R1Y3RzL01pY1Jvb0NlckF1dF8yMDEwLTA2LTIzLmNybDBa
# BggrBgEFBQcBAQROMEwwSgYIKwYBBQUHMAKGPmh0dHA6Ly93d3cubWljcm9zb2Z0
# LmNvbS9wa2kvY2VydHMvTWljUm9vQ2VyQXV0XzIwMTAtMDYtMjMuY3J0MA0GCSqG
# SIb3DQEBCwUAA4ICAQCdVX38Kq3hLB9nATEkW+Geckv8qW/qXBS2Pk5HZHixBpOX
# PTEztTnXwnE2P9pkbHzQdTltuw8x5MKP+2zRoZQYIu7pZmc6U03dmLq2HnjYNi6c
# qYJWAAOwBb6J6Gngugnue99qb74py27YP0h1AdkY3m2CDPVtI1TkeFN1JFe53Z/z
# jj3G82jfZfakVqr3lbYoVSfQJL1AoL8ZthISEV09J+BAljis9/kpicO8F7BUhUKz
# /AyeixmJ5/ALaoHCgRlCGVJ1ijbCHcNhcy4sa3tuPywJeBTpkbKpW99Jo3QMvOyR
# gNI95ko+ZjtPu4b6MhrZlvSP9pEB9s7GdP32THJvEKt1MMU0sHrYUP4KWN1APMdU
# bZ1jdEgssU5HLcEUBHG/ZPkkvnNtyo4JvbMBV0lUZNlz138eW0QBjloZkWsNn6Qo
# 3GcZKCS6OEuabvshVGtqRRFHqfG3rsjoiV5PndLQTHa1V1QJsWkBRH58oWFsc/4K
# u+xBZj1p/cvBQUl+fpO+y/g75LcVv7TOPqUxUYS8vwLBgqJ7Fx0ViY1w/ue10Cga
# iQuPNtq6TPmb/wrpNPgkNWcr4A245oyZ1uEi6vAnQj0llOZ0dFtq0Z4+7X6gMTN9
# vMvpe784cETRkPHIqzqKOghif9lwY1NNje6CbaUFEMFxBmoQtB1VM1izoXBm8qGC
# AtEwggI6AgEBMIH8oYHUpIHRMIHOMQswCQYDVQQGEwJVUzETMBEGA1UECBMKV2Fz
# aGluZ3RvbjEQMA4GA1UEBxMHUmVkbW9uZDEeMBwGA1UEChMVTWljcm9zb2Z0IENv
# cnBvcmF0aW9uMSkwJwYDVQQLEyBNaWNyb3NvZnQgT3BlcmF0aW9ucyBQdWVydG8g
# UmljbzEmMCQGA1UECxMdVGhhbGVzIFRTUyBFU046NDYyRi1FMzE5LTNGMjAxJTAj
# BgNVBAMTHE1pY3Jvc29mdCBUaW1lLVN0YW1wIFNlcnZpY2WiIwoBATAHBgUrDgMC
# GgMVADQcKOKTa3xC+g1aPrcPerxiby6foIGDMIGApH4wfDELMAkGA1UEBhMCVVMx
# EzARBgNVBAgTCldhc2hpbmd0b24xEDAOBgNVBAcTB1JlZG1vbmQxHjAcBgNVBAoT
# FU1pY3Jvc29mdCBDb3Jwb3JhdGlvbjEmMCQGA1UEAxMdTWljcm9zb2Z0IFRpbWUt
# U3RhbXAgUENBIDIwMTAwDQYJKoZIhvcNAQEFBQACBQDmu8WDMCIYDzIwMjIwOTAy
# MDM1NzU1WhgPMjAyMjA5MDMwMzU3NTVaMHYwPAYKKwYBBAGEWQoEATEuMCwwCgIF
# AOa7xYMCAQAwCQIBAAIBAgIB/zAHAgEAAgIRTTAKAgUA5r0XAwIBADA2BgorBgEE
# AYRZCgQCMSgwJjAMBgorBgEEAYRZCgMCoAowCAIBAAIDB6EgoQowCAIBAAIDAYag
# MA0GCSqGSIb3DQEBBQUAA4GBAHWcKX/QTltbxrRR8dfQtV5iNVHMqZ/0cBmzEdWI
# KMBtQN4x4ysQcHeEP15R28u8D7sbKAnuvubIAbUDMO7KPd/k1uMp0hIfj2mp3S+w
# qdOsFHjD40soUaAZO2+utVk5prKxepyh/EJ01sVffNGEnYuMxvCMjRiISPh6oYaM
# a8qyMYIEDTCCBAkCAQEwgZMwfDELMAkGA1UEBhMCVVMxEzARBgNVBAgTCldhc2hp
# bmd0b24xEDAOBgNVBAcTB1JlZG1vbmQxHjAcBgNVBAoTFU1pY3Jvc29mdCBDb3Jw
# b3JhdGlvbjEmMCQGA1UEAxMdTWljcm9zb2Z0IFRpbWUtU3RhbXAgUENBIDIwMTAC
# EzMAAAGkB8/jj6O6b9YAAQAAAaQwDQYJYIZIAWUDBAIBBQCgggFKMBoGCSqGSIb3
# DQEJAzENBgsqhkiG9w0BCRABBDAvBgkqhkiG9w0BCQQxIgQgNoqEYYU9uBKMqIRb
# EWrrzV3+PYGwquTog8WJc3tP/FowgfoGCyqGSIb3DQEJEAIvMYHqMIHnMIHkMIG9
# BCAF/OCjISZwpMBJ8MJ3WwMCF3qOa5YHFG6J4uHjaup5+DCBmDCBgKR+MHwxCzAJ
# BgNVBAYTAlVTMRMwEQYDVQQIEwpXYXNoaW5ndG9uMRAwDgYDVQQHEwdSZWRtb25k
# MR4wHAYDVQQKExVNaWNyb3NvZnQgQ29ycG9yYXRpb24xJjAkBgNVBAMTHU1pY3Jv
# c29mdCBUaW1lLVN0YW1wIFBDQSAyMDEwAhMzAAABpAfP44+jum/WAAEAAAGkMCIE
# IPBC0ugHknuGbVptPTwmpU2L7aUR46UNbTLCJHOHZm7sMA0GCSqGSIb3DQEBCwUA
# BIICAGdl8Cf82uiYCdN3p5vKFPAsgO8Wc3o0GxYw2l9LbORIQTomN1yU25Eo2dy4
# tTVLhkFaTpEN8InFfxhg378AXdQywoVX6SZXqzcrLXayn3MkZYYt2psSeVwxUGRf
# kzBEgRsz0upeWbZN4YbKR2O3oUW5y1n9zpEPE2r61FEppB/J92ElAvoFZB8etnFs
# jc9IdQXVGWhME+YGvHUXyf++szpz9XRXBkKgBUO+c/56v5nW7i9C4vMohlR466+9
# qf0VM5tnzOT3cyc8fO4dLSd52ooY0sSbXPloo4GUIZXzmsQ8/o8km3BHDd647Cr8
# 6K8J5SYF1jUyh5flA+CfqjiyvJEhD7mtkc92B67ckoYWXlGCbvKzvmwVlC58eeEY
# JzdTz+/igY1GwGJYxTHJoCqRfQ8p/f0h7Fmjk191hQ/IYI18iiyeSuNmnNgsoqfR
# G1/+iQFtQRnQFpgoIbSDHuzKtY3cGHzNpAtDA6I75kOiacC+5JbFX2cdTCT5hr2D
# 0IK42op4DUFoK892dKKwvNmDpPJFC6qQTvqcC9fkPyTYCXGNDiO7aGJmZBQrHZ0/
# SWtEYlREMpu15COZxP4hn+utjhzVh+i97n69uQ62wG6FSiHJEqVmaf6/ACeqsvcZ
# O2a54DWpkVOTKTSMp1RK+pAz9ITEA9giyJGlPIvht5stCWbA
# SIG # End signature block
