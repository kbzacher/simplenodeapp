#
# Module manifest for module 'Az.Batch'
#
# Generated by: Microsoft Corporation
#
# Generated on: 2022/8/4
#

@{

# Script module or binary module file associated with this manifest.
RootModule = 'Az.Batch.psm1'

# Version number of this module.
ModuleVersion = '3.2.1'

# Supported PSEditions
CompatiblePSEditions = 'Core', 'Desktop'

# ID used to uniquely identify this module
GUID = 'c6da7084-6a9c-4c33-b162-0f2c6bfad401'

# Author of this module
Author = 'Microsoft Corporation'

# Company or vendor of this module
CompanyName = 'Microsoft Corporation'

# Copyright statement for this module
Copyright = 'Microsoft Corporation. All rights reserved.'

# Description of the functionality provided by this module
Description = 'Microsoft Azure PowerShell - Batch service cmdlets for Azure Resource Manager in Windows PowerShell and PowerShell Core.

For information on Batch, please visit the following: https://docs.microsoft.com/azure/batch/'

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
RequiredAssemblies = 'Microsoft.Azure.Batch.dll', 'Microsoft.Azure.Management.Batch.dll', 
               'Microsoft.Extensions.Primitives.dll', 
               'System.Runtime.CompilerServices.Unsafe.dll', 
               'Microsoft.WindowsAzure.Storage.dll', 
               'Microsoft.AspNetCore.WebUtilities.dll', 
               'Microsoft.Net.Http.Headers.dll'

# Script files (.ps1) that are run in the caller's environment prior to importing this module.
# ScriptsToProcess = @()

# Type files (.ps1xml) to be loaded when importing this module
# TypesToProcess = @()

# Format files (.ps1xml) to be loaded when importing this module
FormatsToProcess = 'Batch.format.ps1xml'

# Modules to import as nested modules of the module specified in RootModule/ModuleToProcess
NestedModules = @()

# Functions to export from this module, for best performance, do not use wildcards and do not delete the entry, use an empty array if there are no functions to export.
FunctionsToExport = @()

# Cmdlets to export from this module, for best performance, do not use wildcards and do not delete the entry, use an empty array if there are no cmdlets to export.
CmdletsToExport = 'Remove-AzBatchAccount', 'Get-AzBatchAccount', 
               'Get-AzBatchAccountKey', 'New-AzBatchAccount', 
               'New-AzBatchAccountKey', 'Set-AzBatchAccount', 
               'New-AzBatchApplicationPackage', 'Get-AzBatchJobStatistic', 
               'Remove-AzBatchApplication', 'Remove-AzBatchApplicationPackage', 
               'Get-AzBatchApplicationPackage', 'Get-AzBatchApplication', 
               'Set-AzBatchApplication', 'New-AzBatchApplication', 
               'Get-AzBatchCertificate', 'Remove-AzBatchCertificate', 
               'New-AzBatchCertificate', 'Stop-AzBatchCertificateDeletion', 
               'Disable-AzBatchComputeNodeScheduling', 
               'Enable-AzBatchComputeNodeScheduling', 
               'Get-AzBatchRemoteLoginSetting', 'Remove-AzBatchComputeNode', 
               'Reset-AzBatchComputeNode', 'Restart-AzBatchComputeNode', 
               'Set-AzBatchComputeNodeUser', 'Get-AzBatchNodeFile', 
               'Get-AzBatchNodeFileContent', 
               'Get-AzBatchRemoteDesktopProtocolFile', 'Remove-AzBatchNodeFile', 
               'Disable-AzBatchJobSchedule', 'Enable-AzBatchJobSchedule', 
               'Set-AzBatchJobSchedule', 'Stop-AzBatchJobSchedule', 
               'Disable-AzBatchJob', 'Enable-AzBatchJob', 'New-AzBatchJob', 
               'Remove-AzBatchJob', 'Set-AzBatchJob', 'Stop-AzBatchJob', 
               'Get-AzBatchJob', 'Get-AzBatchJobPreparationAndReleaseTaskStatus', 
               'Disable-AzBatchAutoScale', 'Enable-AzBatchAutoScale', 
               'Get-AzBatchPoolStatistic', 'Get-AzBatchPoolUsageMetric', 
               'Get-AzBatchPool', 'Get-AzBatchSupportedImage', 'New-AzBatchPool', 
               'Remove-AzBatchPool', 'Set-AzBatchPool', 'Start-AzBatchPoolResize', 
               'Stop-AzBatchPoolResize', 'Test-AzBatchAutoScale', 
               'Get-AzBatchLocationQuota', 'Get-AzBatchSubtask', 'Get-AzBatchTask', 
               'New-AzBatchTask', 'Remove-AzBatchTask', 'New-AzBatchComputeNodeUser', 
               'Remove-AzBatchComputeNodeUser', 'Enable-AzBatchTask', 
               'Set-AzBatchTask', 'Stop-AzBatchTask', 'Get-AzBatchComputeNode', 
               'Get-AzBatchJobSchedule', 'New-AzBatchJobSchedule', 
               'Remove-AzBatchJobSchedule', 'Get-AzBatchTaskCount', 
               'Get-AzBatchPoolNodeCount', 
               'Start-AzBatchComputeNodeServiceLogUpload', 
               'New-AzBatchResourceFile', 'Get-AzBatchSupportedVirtualMachineSku', 
               'Get-AzBatchTaskSlotCount', 'Get-AzBatchComputeNodeExtension'

# Variables to export from this module
# VariablesToExport = @()

# Aliases to export from this module, for best performance, do not use wildcards and do not delete the entry, use an empty array if there are no aliases to export.
AliasesToExport = 'Reactivate-AzBatchTask', 'Get-AzBatchSubscriptionQuotas', 
               'Get-AzBatchAccountKeys', 'Get-AzBatchJobStatistics', 
               'Get-AzBatchLocationQuotas', 'Get-AzBatchPoolNodeCounts', 
               'Get-AzBatchPoolStatistics', 'Get-AzBatchPoolUsageMetrics', 
               'Get-AzBatchRemoteLoginSettings', 'Get-AzBatchTaskCounts', 
               'Get-AzBatchSupportedVMSku'

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
        Tags = 'Azure','ResourceManager','ARM','Batch'

        # A URL to the license for this module.
        LicenseUri = 'https://aka.ms/azps-license'

        # A URL to the main website for this project.
        ProjectUri = 'https://github.com/Azure/azure-powershell'

        # A URL to an icon representing this module.
        # IconUri = ''

        # ReleaseNotes of this module
        ReleaseNotes = '* Fixed a bug wherein creating a new JobSchedule does not properly submit Output Files.'

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
# MIInqQYJKoZIhvcNAQcCoIInmjCCJ5YCAQExDzANBglghkgBZQMEAgEFADB5Bgor
# BgEEAYI3AgEEoGswaTA0BgorBgEEAYI3AgEeMCYCAwEAAAQQH8w7YFlLCE63JNLG
# KX7zUQIBAAIBAAIBAAIBAAIBADAxMA0GCWCGSAFlAwQCAQUABCD6Z3eGZpr+bsl8
# uUnlZFLGD97x8D3hcypDm5P/Dsfjy6CCDYEwggX/MIID56ADAgECAhMzAAACzI61
# lqa90clOAAAAAALMMA0GCSqGSIb3DQEBCwUAMH4xCzAJBgNVBAYTAlVTMRMwEQYD
# VQQIEwpXYXNoaW5ndG9uMRAwDgYDVQQHEwdSZWRtb25kMR4wHAYDVQQKExVNaWNy
# b3NvZnQgQ29ycG9yYXRpb24xKDAmBgNVBAMTH01pY3Jvc29mdCBDb2RlIFNpZ25p
# bmcgUENBIDIwMTEwHhcNMjIwNTEyMjA0NjAxWhcNMjMwNTExMjA0NjAxWjB0MQsw
# CQYDVQQGEwJVUzETMBEGA1UECBMKV2FzaGluZ3RvbjEQMA4GA1UEBxMHUmVkbW9u
# ZDEeMBwGA1UEChMVTWljcm9zb2Z0IENvcnBvcmF0aW9uMR4wHAYDVQQDExVNaWNy
# b3NvZnQgQ29ycG9yYXRpb24wggEiMA0GCSqGSIb3DQEBAQUAA4IBDwAwggEKAoIB
# AQCiTbHs68bADvNud97NzcdP0zh0mRr4VpDv68KobjQFybVAuVgiINf9aG2zQtWK
# No6+2X2Ix65KGcBXuZyEi0oBUAAGnIe5O5q/Y0Ij0WwDyMWaVad2Te4r1Eic3HWH
# UfiiNjF0ETHKg3qa7DCyUqwsR9q5SaXuHlYCwM+m59Nl3jKnYnKLLfzhl13wImV9
# DF8N76ANkRyK6BYoc9I6hHF2MCTQYWbQ4fXgzKhgzj4zeabWgfu+ZJCiFLkogvc0
# RVb0x3DtyxMbl/3e45Eu+sn/x6EVwbJZVvtQYcmdGF1yAYht+JnNmWwAxL8MgHMz
# xEcoY1Q1JtstiY3+u3ulGMvhAgMBAAGjggF+MIIBejAfBgNVHSUEGDAWBgorBgEE
# AYI3TAgBBggrBgEFBQcDAzAdBgNVHQ4EFgQUiLhHjTKWzIqVIp+sM2rOHH11rfQw
# UAYDVR0RBEkwR6RFMEMxKTAnBgNVBAsTIE1pY3Jvc29mdCBPcGVyYXRpb25zIFB1
# ZXJ0byBSaWNvMRYwFAYDVQQFEw0yMzAwMTIrNDcwNTI5MB8GA1UdIwQYMBaAFEhu
# ZOVQBdOCqhc3NyK1bajKdQKVMFQGA1UdHwRNMEswSaBHoEWGQ2h0dHA6Ly93d3cu
# bWljcm9zb2Z0LmNvbS9wa2lvcHMvY3JsL01pY0NvZFNpZ1BDQTIwMTFfMjAxMS0w
# Ny0wOC5jcmwwYQYIKwYBBQUHAQEEVTBTMFEGCCsGAQUFBzAChkVodHRwOi8vd3d3
# Lm1pY3Jvc29mdC5jb20vcGtpb3BzL2NlcnRzL01pY0NvZFNpZ1BDQTIwMTFfMjAx
# MS0wNy0wOC5jcnQwDAYDVR0TAQH/BAIwADANBgkqhkiG9w0BAQsFAAOCAgEAeA8D
# sOAHS53MTIHYu8bbXrO6yQtRD6JfyMWeXaLu3Nc8PDnFc1efYq/F3MGx/aiwNbcs
# J2MU7BKNWTP5JQVBA2GNIeR3mScXqnOsv1XqXPvZeISDVWLaBQzceItdIwgo6B13
# vxlkkSYMvB0Dr3Yw7/W9U4Wk5K/RDOnIGvmKqKi3AwyxlV1mpefy729FKaWT7edB
# d3I4+hldMY8sdfDPjWRtJzjMjXZs41OUOwtHccPazjjC7KndzvZHx/0VWL8n0NT/
# 404vftnXKifMZkS4p2sB3oK+6kCcsyWsgS/3eYGw1Fe4MOnin1RhgrW1rHPODJTG
# AUOmW4wc3Q6KKr2zve7sMDZe9tfylonPwhk971rX8qGw6LkrGFv31IJeJSe/aUbG
# dUDPkbrABbVvPElgoj5eP3REqx5jdfkQw7tOdWkhn0jDUh2uQen9Atj3RkJyHuR0
# GUsJVMWFJdkIO/gFwzoOGlHNsmxvpANV86/1qgb1oZXdrURpzJp53MsDaBY/pxOc
# J0Cvg6uWs3kQWgKk5aBzvsX95BzdItHTpVMtVPW4q41XEvbFmUP1n6oL5rdNdrTM
# j/HXMRk1KCksax1Vxo3qv+13cCsZAaQNaIAvt5LvkshZkDZIP//0Hnq7NnWeYR3z
# 4oFiw9N2n3bb9baQWuWPswG0Dq9YT9kb+Cs4qIIwggd6MIIFYqADAgECAgphDpDS
# AAAAAAADMA0GCSqGSIb3DQEBCwUAMIGIMQswCQYDVQQGEwJVUzETMBEGA1UECBMK
# V2FzaGluZ3RvbjEQMA4GA1UEBxMHUmVkbW9uZDEeMBwGA1UEChMVTWljcm9zb2Z0
# IENvcnBvcmF0aW9uMTIwMAYDVQQDEylNaWNyb3NvZnQgUm9vdCBDZXJ0aWZpY2F0
# ZSBBdXRob3JpdHkgMjAxMTAeFw0xMTA3MDgyMDU5MDlaFw0yNjA3MDgyMTA5MDla
# MH4xCzAJBgNVBAYTAlVTMRMwEQYDVQQIEwpXYXNoaW5ndG9uMRAwDgYDVQQHEwdS
# ZWRtb25kMR4wHAYDVQQKExVNaWNyb3NvZnQgQ29ycG9yYXRpb24xKDAmBgNVBAMT
# H01pY3Jvc29mdCBDb2RlIFNpZ25pbmcgUENBIDIwMTEwggIiMA0GCSqGSIb3DQEB
# AQUAA4ICDwAwggIKAoICAQCr8PpyEBwurdhuqoIQTTS68rZYIZ9CGypr6VpQqrgG
# OBoESbp/wwwe3TdrxhLYC/A4wpkGsMg51QEUMULTiQ15ZId+lGAkbK+eSZzpaF7S
# 35tTsgosw6/ZqSuuegmv15ZZymAaBelmdugyUiYSL+erCFDPs0S3XdjELgN1q2jz
# y23zOlyhFvRGuuA4ZKxuZDV4pqBjDy3TQJP4494HDdVceaVJKecNvqATd76UPe/7
# 4ytaEB9NViiienLgEjq3SV7Y7e1DkYPZe7J7hhvZPrGMXeiJT4Qa8qEvWeSQOy2u
# M1jFtz7+MtOzAz2xsq+SOH7SnYAs9U5WkSE1JcM5bmR/U7qcD60ZI4TL9LoDho33
# X/DQUr+MlIe8wCF0JV8YKLbMJyg4JZg5SjbPfLGSrhwjp6lm7GEfauEoSZ1fiOIl
# XdMhSz5SxLVXPyQD8NF6Wy/VI+NwXQ9RRnez+ADhvKwCgl/bwBWzvRvUVUvnOaEP
# 6SNJvBi4RHxF5MHDcnrgcuck379GmcXvwhxX24ON7E1JMKerjt/sW5+v/N2wZuLB
# l4F77dbtS+dJKacTKKanfWeA5opieF+yL4TXV5xcv3coKPHtbcMojyyPQDdPweGF
# RInECUzF1KVDL3SV9274eCBYLBNdYJWaPk8zhNqwiBfenk70lrC8RqBsmNLg1oiM
# CwIDAQABo4IB7TCCAekwEAYJKwYBBAGCNxUBBAMCAQAwHQYDVR0OBBYEFEhuZOVQ
# BdOCqhc3NyK1bajKdQKVMBkGCSsGAQQBgjcUAgQMHgoAUwB1AGIAQwBBMAsGA1Ud
# DwQEAwIBhjAPBgNVHRMBAf8EBTADAQH/MB8GA1UdIwQYMBaAFHItOgIxkEO5FAVO
# 4eqnxzHRI4k0MFoGA1UdHwRTMFEwT6BNoEuGSWh0dHA6Ly9jcmwubWljcm9zb2Z0
# LmNvbS9wa2kvY3JsL3Byb2R1Y3RzL01pY1Jvb0NlckF1dDIwMTFfMjAxMV8wM18y
# Mi5jcmwwXgYIKwYBBQUHAQEEUjBQME4GCCsGAQUFBzAChkJodHRwOi8vd3d3Lm1p
# Y3Jvc29mdC5jb20vcGtpL2NlcnRzL01pY1Jvb0NlckF1dDIwMTFfMjAxMV8wM18y
# Mi5jcnQwgZ8GA1UdIASBlzCBlDCBkQYJKwYBBAGCNy4DMIGDMD8GCCsGAQUFBwIB
# FjNodHRwOi8vd3d3Lm1pY3Jvc29mdC5jb20vcGtpb3BzL2RvY3MvcHJpbWFyeWNw
# cy5odG0wQAYIKwYBBQUHAgIwNB4yIB0ATABlAGcAYQBsAF8AcABvAGwAaQBjAHkA
# XwBzAHQAYQB0AGUAbQBlAG4AdAAuIB0wDQYJKoZIhvcNAQELBQADggIBAGfyhqWY
# 4FR5Gi7T2HRnIpsLlhHhY5KZQpZ90nkMkMFlXy4sPvjDctFtg/6+P+gKyju/R6mj
# 82nbY78iNaWXXWWEkH2LRlBV2AySfNIaSxzzPEKLUtCw/WvjPgcuKZvmPRul1LUd
# d5Q54ulkyUQ9eHoj8xN9ppB0g430yyYCRirCihC7pKkFDJvtaPpoLpWgKj8qa1hJ
# Yx8JaW5amJbkg/TAj/NGK978O9C9Ne9uJa7lryft0N3zDq+ZKJeYTQ49C/IIidYf
# wzIY4vDFLc5bnrRJOQrGCsLGra7lstnbFYhRRVg4MnEnGn+x9Cf43iw6IGmYslmJ
# aG5vp7d0w0AFBqYBKig+gj8TTWYLwLNN9eGPfxxvFX1Fp3blQCplo8NdUmKGwx1j
# NpeG39rz+PIWoZon4c2ll9DuXWNB41sHnIc+BncG0QaxdR8UvmFhtfDcxhsEvt9B
# xw4o7t5lL+yX9qFcltgA1qFGvVnzl6UJS0gQmYAf0AApxbGbpT9Fdx41xtKiop96
# eiL6SJUfq/tHI4D1nvi/a7dLl+LrdXga7Oo3mXkYS//WsyNodeav+vyL6wuA6mk7
# r/ww7QRMjt/fdW1jkT3RnVZOT7+AVyKheBEyIXrvQQqxP/uozKRdwaGIm1dxVk5I
# RcBCyZt2WwqASGv9eZ/BvW1taslScxMNelDNMYIZfjCCGXoCAQEwgZUwfjELMAkG
# A1UEBhMCVVMxEzARBgNVBAgTCldhc2hpbmd0b24xEDAOBgNVBAcTB1JlZG1vbmQx
# HjAcBgNVBAoTFU1pY3Jvc29mdCBDb3Jwb3JhdGlvbjEoMCYGA1UEAxMfTWljcm9z
# b2Z0IENvZGUgU2lnbmluZyBQQ0EgMjAxMQITMwAAAsyOtZamvdHJTgAAAAACzDAN
# BglghkgBZQMEAgEFAKCBrjAZBgkqhkiG9w0BCQMxDAYKKwYBBAGCNwIBBDAcBgor
# BgEEAYI3AgELMQ4wDAYKKwYBBAGCNwIBFTAvBgkqhkiG9w0BCQQxIgQg+m5/v8nx
# zy3AAWq7nbs4l61dAghP2km6UuVl68WAEiYwQgYKKwYBBAGCNwIBDDE0MDKgFIAS
# AE0AaQBjAHIAbwBzAG8AZgB0oRqAGGh0dHA6Ly93d3cubWljcm9zb2Z0LmNvbTAN
# BgkqhkiG9w0BAQEFAASCAQANdeDavmL6MtWMjyiiHHQ1zJhsSlcfNyHzeSCgDADB
# lAIc9BWCQyTIk3uMOFIGsQwyED2AMg9apFwWCi7Ucs6e9LGfBT64JOME0GkGDqPb
# uvJE/ppZGS2CSxQ1twYdAy/hh9telHCDbCN2hUECP8kST/No9zhLU+EhSNBH9t4B
# Cb9awH74wjZ5ULlwDaPngNGz5kpUEDtsrywR1GsarLrzAwzxRExhsul34pCDbP24
# uQ/9lt0vUtCBO6g7dbcy+5EAqaDZ7t3Y5TX0l2avGNGqoTPr6+d02lT8GEs24ZV4
# Rd1s73Qrac1yx3xS1KA/QySiNonFSezR4wrDJvjx0OOloYIXCDCCFwQGCisGAQQB
# gjcDAwExghb0MIIW8AYJKoZIhvcNAQcCoIIW4TCCFt0CAQMxDzANBglghkgBZQME
# AgEFADCCAVQGCyqGSIb3DQEJEAEEoIIBQwSCAT8wggE7AgEBBgorBgEEAYRZCgMB
# MDEwDQYJYIZIAWUDBAIBBQAEIBxKXUZofOk6mEb/lwxiwDn3wq2Ss/Lq4NCHomKM
# mL/+AgZi2yuVmwcYEjIwMjIwODA0MDkyNDQzLjIyWjAEgAIB9KCB1KSB0TCBzjEL
# MAkGA1UEBhMCVVMxEzARBgNVBAgTCldhc2hpbmd0b24xEDAOBgNVBAcTB1JlZG1v
# bmQxHjAcBgNVBAoTFU1pY3Jvc29mdCBDb3Jwb3JhdGlvbjEpMCcGA1UECxMgTWlj
# cm9zb2Z0IE9wZXJhdGlvbnMgUHVlcnRvIFJpY28xJjAkBgNVBAsTHVRoYWxlcyBU
# U1MgRVNOOkY4N0EtRTM3NC1EN0I5MSUwIwYDVQQDExxNaWNyb3NvZnQgVGltZS1T
# dGFtcCBTZXJ2aWNloIIRXDCCBxAwggT4oAMCAQICEzMAAAGuqgtcszSllRoAAQAA
# Aa4wDQYJKoZIhvcNAQELBQAwfDELMAkGA1UEBhMCVVMxEzARBgNVBAgTCldhc2hp
# bmd0b24xEDAOBgNVBAcTB1JlZG1vbmQxHjAcBgNVBAoTFU1pY3Jvc29mdCBDb3Jw
# b3JhdGlvbjEmMCQGA1UEAxMdTWljcm9zb2Z0IFRpbWUtU3RhbXAgUENBIDIwMTAw
# HhcNMjIwMzAyMTg1MTM3WhcNMjMwNTExMTg1MTM3WjCBzjELMAkGA1UEBhMCVVMx
# EzARBgNVBAgTCldhc2hpbmd0b24xEDAOBgNVBAcTB1JlZG1vbmQxHjAcBgNVBAoT
# FU1pY3Jvc29mdCBDb3Jwb3JhdGlvbjEpMCcGA1UECxMgTWljcm9zb2Z0IE9wZXJh
# dGlvbnMgUHVlcnRvIFJpY28xJjAkBgNVBAsTHVRoYWxlcyBUU1MgRVNOOkY4N0Et
# RTM3NC1EN0I5MSUwIwYDVQQDExxNaWNyb3NvZnQgVGltZS1TdGFtcCBTZXJ2aWNl
# MIICIjANBgkqhkiG9w0BAQEFAAOCAg8AMIICCgKCAgEAk4wa8SE1DAsdpy3Oc+lj
# wmDmojxCyCnSaGXYbbO1U+ieriCw4x7m72nl/Xs8gzUpeNRoo2Xd2Odyrb0uKqaq
# doo5GCA8c0STtD61qXkjJz5LyT9HfWAIa3iq9BWoEtA2K/E66RR9qkbjUtN0sd4z
# i7AieT5CsZAfYrjCM22JSmKsXY90JxuRfIAsSnJPZGvDMmbNyZt0KxxjQ3dEfGsx
# 5ZDeTuw23jU0Fk5P7ikKaTDxSSAqJIlczMqzfwzFSrH86VLzR0sNMd35l6LVLX+p
# sK1MbM2bRuPqp+SVQzckUAXUktfDC+qBlF0NBTrbbjC0afBqVNo4jRHR5f5ytw+l
# cYHbsQiBhT7SWjZofv1I2uw9YRx0EgJ3TJ+EVTaeJUl6kbORd60m9sXFbeI3uxyM
# t/D9LpRcXvC0TN041dWIjk/ZQzvv0/oQhn6DzUTYxZfxeMtXK8iy/PJyQngUWL6H
# XI8T6/NyQ/HMc6yItpp+5yzIyMBoAzxbBr7TYG6MQ7KV8tLKTSK/0i9Ij1mQlb+A
# u9DjZTT5TTflmFSEKpsoRYQwivbJratimtQwQpxd/hH3stU8F+wmduQ1S5ulQDgr
# WLuKNDWmRSW35hD/fia0TLt5KKBWlXOep+s1V6sK8cbkjB94VWE81sDArqUERDb2
# cxiNFePhAvK+YpGao4kz/DUCAwEAAaOCATYwggEyMB0GA1UdDgQWBBTTMG/fvyhg
# isGprXT+/O1kOmFR7jAfBgNVHSMEGDAWgBSfpxVdAF5iXYP05dJlpxtTNRnpcjBf
# BgNVHR8EWDBWMFSgUqBQhk5odHRwOi8vd3d3Lm1pY3Jvc29mdC5jb20vcGtpb3Bz
# L2NybC9NaWNyb3NvZnQlMjBUaW1lLVN0YW1wJTIwUENBJTIwMjAxMCgxKS5jcmww
# bAYIKwYBBQUHAQEEYDBeMFwGCCsGAQUFBzAChlBodHRwOi8vd3d3Lm1pY3Jvc29m
# dC5jb20vcGtpb3BzL2NlcnRzL01pY3Jvc29mdCUyMFRpbWUtU3RhbXAlMjBQQ0El
# MjAyMDEwKDEpLmNydDAMBgNVHRMBAf8EAjAAMBMGA1UdJQQMMAoGCCsGAQUFBwMI
# MA0GCSqGSIb3DQEBCwUAA4ICAQBdv5Hw/VUARA48rTMDEAMhc/hwlCZqu2NUUswS
# QtiHf08W1Vu3zhG/RDUZJNiaE/x/846+eYLl6PDc1zVVGLvitYZQhO/Xxaqvx4G8
# BJ3h4MDEVsDySc46b9nJKQwMNh1vrvfxpDTK+p/sBZyGA+e0Jz+eE1qlImaPNSR7
# sS+MHx6LQGdjTGX4BBxLEkb9Weyb0jA56vwTWaJUth8+f18gN1pq/Vur2L6Cdl/W
# FLtqkanFuK0ImvUoYPiMjIAGTEeF6g86GG1CbW7OcTtuUrEfylTtbYD56qCCw2Qz
# dUHSevNFkGqbhKYFI2E4/PLeh86YtxEr9qWg4Cvqd6GLyLmWGZODUuQ4DEKEvAe+
# W6IJj0r7a8im3jyKgr+H63PlGBV1v5LzHCfvbyU3wo+SQHZFrmKJyu+2ADnnBJR2
# HoUXFfF5L5uyAFrKftnJp9OkMzsFA4FjBqh2y5V/leAavIbHziThHnyY/AHdDT0J
# EAazfk063pOs9epzKU27pnPzFNANxomnnikrI6hbmIgMWOkud5dMSO1YIUKACjjN
# un0I0hOn3so+dzeBlVoy8SlTxKntVnA31yRHZYMrI6MOCEhx+4UlMs52Q64wsaxY
# 92djqJ21ZzZtQNBrZBvOY1JnIW2ESmvBDYaaBoZsYq5hVWpSP9i3bUcPQ8F4Mjkx
# qXxJzDCCB3EwggVZoAMCAQICEzMAAAAVxedrngKbSZkAAAAAABUwDQYJKoZIhvcN
# AQELBQAwgYgxCzAJBgNVBAYTAlVTMRMwEQYDVQQIEwpXYXNoaW5ndG9uMRAwDgYD
# VQQHEwdSZWRtb25kMR4wHAYDVQQKExVNaWNyb3NvZnQgQ29ycG9yYXRpb24xMjAw
# BgNVBAMTKU1pY3Jvc29mdCBSb290IENlcnRpZmljYXRlIEF1dGhvcml0eSAyMDEw
# MB4XDTIxMDkzMDE4MjIyNVoXDTMwMDkzMDE4MzIyNVowfDELMAkGA1UEBhMCVVMx
# EzARBgNVBAgTCldhc2hpbmd0b24xEDAOBgNVBAcTB1JlZG1vbmQxHjAcBgNVBAoT
# FU1pY3Jvc29mdCBDb3Jwb3JhdGlvbjEmMCQGA1UEAxMdTWljcm9zb2Z0IFRpbWUt
# U3RhbXAgUENBIDIwMTAwggIiMA0GCSqGSIb3DQEBAQUAA4ICDwAwggIKAoICAQDk
# 4aZM57RyIQt5osvXJHm9DtWC0/3unAcH0qlsTnXIyjVX9gF/bErg4r25PhdgM/9c
# T8dm95VTcVrifkpa/rg2Z4VGIwy1jRPPdzLAEBjoYH1qUoNEt6aORmsHFPPFdvWG
# UNzBRMhxXFExN6AKOG6N7dcP2CZTfDlhAnrEqv1yaa8dq6z2Nr41JmTamDu6Gnsz
# rYBbfowQHJ1S/rboYiXcag/PXfT+jlPP1uyFVk3v3byNpOORj7I5LFGc6XBpDco2
# LXCOMcg1KL3jtIckw+DJj361VI/c+gVVmG1oO5pGve2krnopN6zL64NF50ZuyjLV
# wIYwXE8s4mKyzbnijYjklqwBSru+cakXW2dg3viSkR4dPf0gz3N9QZpGdc3EXzTd
# EonW/aUgfX782Z5F37ZyL9t9X4C626p+Nuw2TPYrbqgSUei/BQOj0XOmTTd0lBw0
# gg/wEPK3Rxjtp+iZfD9M269ewvPV2HM9Q07BMzlMjgK8QmguEOqEUUbi0b1qGFph
# AXPKZ6Je1yh2AuIzGHLXpyDwwvoSCtdjbwzJNmSLW6CmgyFdXzB0kZSU2LlQ+QuJ
# YfM2BjUYhEfb3BvR/bLUHMVr9lxSUV0S2yW6r1AFemzFER1y7435UsSFF5PAPBXb
# GjfHCBUYP3irRbb1Hode2o+eFnJpxq57t7c+auIurQIDAQABo4IB3TCCAdkwEgYJ
# KwYBBAGCNxUBBAUCAwEAATAjBgkrBgEEAYI3FQIEFgQUKqdS/mTEmr6CkTxGNSnP
# EP8vBO4wHQYDVR0OBBYEFJ+nFV0AXmJdg/Tl0mWnG1M1GelyMFwGA1UdIARVMFMw
# UQYMKwYBBAGCN0yDfQEBMEEwPwYIKwYBBQUHAgEWM2h0dHA6Ly93d3cubWljcm9z
# b2Z0LmNvbS9wa2lvcHMvRG9jcy9SZXBvc2l0b3J5Lmh0bTATBgNVHSUEDDAKBggr
# BgEFBQcDCDAZBgkrBgEEAYI3FAIEDB4KAFMAdQBiAEMAQTALBgNVHQ8EBAMCAYYw
# DwYDVR0TAQH/BAUwAwEB/zAfBgNVHSMEGDAWgBTV9lbLj+iiXGJo0T2UkFvXzpoY
# xDBWBgNVHR8ETzBNMEugSaBHhkVodHRwOi8vY3JsLm1pY3Jvc29mdC5jb20vcGtp
# L2NybC9wcm9kdWN0cy9NaWNSb29DZXJBdXRfMjAxMC0wNi0yMy5jcmwwWgYIKwYB
# BQUHAQEETjBMMEoGCCsGAQUFBzAChj5odHRwOi8vd3d3Lm1pY3Jvc29mdC5jb20v
# cGtpL2NlcnRzL01pY1Jvb0NlckF1dF8yMDEwLTA2LTIzLmNydDANBgkqhkiG9w0B
# AQsFAAOCAgEAnVV9/Cqt4SwfZwExJFvhnnJL/Klv6lwUtj5OR2R4sQaTlz0xM7U5
# 18JxNj/aZGx80HU5bbsPMeTCj/ts0aGUGCLu6WZnOlNN3Zi6th542DYunKmCVgAD
# sAW+iehp4LoJ7nvfam++Kctu2D9IdQHZGN5tggz1bSNU5HhTdSRXud2f8449xvNo
# 32X2pFaq95W2KFUn0CS9QKC/GbYSEhFdPSfgQJY4rPf5KYnDvBewVIVCs/wMnosZ
# iefwC2qBwoEZQhlSdYo2wh3DYXMuLGt7bj8sCXgU6ZGyqVvfSaN0DLzskYDSPeZK
# PmY7T7uG+jIa2Zb0j/aRAfbOxnT99kxybxCrdTDFNLB62FD+CljdQDzHVG2dY3RI
# LLFORy3BFARxv2T5JL5zbcqOCb2zAVdJVGTZc9d/HltEAY5aGZFrDZ+kKNxnGSgk
# ujhLmm77IVRrakURR6nxt67I6IleT53S0Ex2tVdUCbFpAUR+fKFhbHP+CrvsQWY9
# af3LwUFJfn6Tvsv4O+S3Fb+0zj6lMVGEvL8CwYKiexcdFYmNcP7ntdAoGokLjzba
# ukz5m/8K6TT4JDVnK+ANuOaMmdbhIurwJ0I9JZTmdHRbatGePu1+oDEzfbzL6Xu/
# OHBE0ZDxyKs6ijoIYn/ZcGNTTY3ugm2lBRDBcQZqELQdVTNYs6FwZvKhggLPMIIC
# OAIBATCB/KGB1KSB0TCBzjELMAkGA1UEBhMCVVMxEzARBgNVBAgTCldhc2hpbmd0
# b24xEDAOBgNVBAcTB1JlZG1vbmQxHjAcBgNVBAoTFU1pY3Jvc29mdCBDb3Jwb3Jh
# dGlvbjEpMCcGA1UECxMgTWljcm9zb2Z0IE9wZXJhdGlvbnMgUHVlcnRvIFJpY28x
# JjAkBgNVBAsTHVRoYWxlcyBUU1MgRVNOOkY4N0EtRTM3NC1EN0I5MSUwIwYDVQQD
# ExxNaWNyb3NvZnQgVGltZS1TdGFtcCBTZXJ2aWNloiMKAQEwBwYFKw4DAhoDFQC8
# mrCT/GfJyBXkZ3LlvgjAT9Na46CBgzCBgKR+MHwxCzAJBgNVBAYTAlVTMRMwEQYD
# VQQIEwpXYXNoaW5ndG9uMRAwDgYDVQQHEwdSZWRtb25kMR4wHAYDVQQKExVNaWNy
# b3NvZnQgQ29ycG9yYXRpb24xJjAkBgNVBAMTHU1pY3Jvc29mdCBUaW1lLVN0YW1w
# IFBDQSAyMDEwMA0GCSqGSIb3DQEBBQUAAgUA5pV7bjAiGA8yMDIyMDgwNDAyNTU0
# MloYDzIwMjIwODA1MDI1NTQyWjB0MDoGCisGAQQBhFkKBAExLDAqMAoCBQDmlXtu
# AgEAMAcCAQACAgQ5MAcCAQACAhGiMAoCBQDmlszuAgEAMDYGCisGAQQBhFkKBAIx
# KDAmMAwGCisGAQQBhFkKAwKgCjAIAgEAAgMHoSChCjAIAgEAAgMBhqAwDQYJKoZI
# hvcNAQEFBQADgYEABpHYo9nVmL5ELRT3xSggX7Ro3JMoIhwNe8zi7QF7D82g5W9l
# LlwVmFDL80i9AzJteqqflEOjhzE4aKmImmK2XqpVIYY91vA2qLVjGy6wwoivM73v
# 7ETXoJNgVIaLAI9YV6f7K7U7qgsd2XOUHcAXZqobu+MQNP+VuSjxz7GsGfoxggQN
# MIIECQIBATCBkzB8MQswCQYDVQQGEwJVUzETMBEGA1UECBMKV2FzaGluZ3RvbjEQ
# MA4GA1UEBxMHUmVkbW9uZDEeMBwGA1UEChMVTWljcm9zb2Z0IENvcnBvcmF0aW9u
# MSYwJAYDVQQDEx1NaWNyb3NvZnQgVGltZS1TdGFtcCBQQ0EgMjAxMAITMwAAAa6q
# C1yzNKWVGgABAAABrjANBglghkgBZQMEAgEFAKCCAUowGgYJKoZIhvcNAQkDMQ0G
# CyqGSIb3DQEJEAEEMC8GCSqGSIb3DQEJBDEiBCAk7Xk8oVjdEyOe0gJ2DWqjfFal
# 6mSHq63Tlc47l49rNjCB+gYLKoZIhvcNAQkQAi8xgeowgecwgeQwgb0EIEkoHT64
# jMNaoe6fT2apNTy46Dq17DTK7W5DSJT8Um9oMIGYMIGApH4wfDELMAkGA1UEBhMC
# VVMxEzARBgNVBAgTCldhc2hpbmd0b24xEDAOBgNVBAcTB1JlZG1vbmQxHjAcBgNV
# BAoTFU1pY3Jvc29mdCBDb3Jwb3JhdGlvbjEmMCQGA1UEAxMdTWljcm9zb2Z0IFRp
# bWUtU3RhbXAgUENBIDIwMTACEzMAAAGuqgtcszSllRoAAQAAAa4wIgQgoEKy7NVJ
# 9Ih8oP0Sjf3QLHx6fP8VORgIFOL2sh96bC8wDQYJKoZIhvcNAQELBQAEggIASa16
# a88m2KOznEzhacQqGyF0Lln3se1T+XoAaH5WJiJ1fFoMPx0yXK+fQWnc9G/f/SrK
# L9Z1+wGzzS2zmvmtHRnMlmf83MnGiNZlbz0hHTDtlyhZtF6VcKunZE7vSEallBin
# zPzi/ywh+uwTtSoCOqIgJCv2zyx2eHEt7h9/QHSaRtay1UNXOw587QJa9K7L27QD
# tv/9UeoK7ZZDDoeqPP83nEDc2rYGBkdXB3gLur/j4ZPnqR1rkeVdNL+SmAGNH1DK
# f503+sq76n7TTtfi2QY0Lu6TcD76bMKZtxBLhsRHOYrs4OEkgeHiAVvIbb6Ad3ql
# MEt+r6/kTWkUQKmVmM/s79t30Lsfl7tuIgT9OkQ1KhPwv4i6kEZJGSMAVA9M1QFx
# NQW4iK45HmcL9ZyybcQA8qbqzQbJlAt505w+6yTu2mwCNvg0xUSNN3YCbezSAn5I
# +I7P5brx8XBjrbXpPn5JPF/7e8t7sTqhLICIDmtiafx7vpGbS/OhdIz9f+oJW07p
# iTXrExxVnjd6rjyjgpLzNHmx8qyQ1u6J74VHd5E67GJmtVUO2QU3BRu4+vD8bs7Y
# XO+2vRHk5lnvhiYL2bB1YNN85P2ZCJw4NK3o1rERUtfT8mU0CxXKW4+q4oevcehO
# CWzyUw5guCugf8efRv7iv1fXWjEhdgLmxi2iOv4=
# SIG # End signature block
