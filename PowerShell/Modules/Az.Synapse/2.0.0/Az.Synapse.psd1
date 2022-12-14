#
# Module manifest for module 'Az.Synapse'
#
# Generated by: Microsoft Corporation
#
# Generated on: 10/15/2022
#

@{

# Script module or binary module file associated with this manifest.
RootModule = 'Az.Synapse.psm1'

# Version number of this module.
ModuleVersion = '2.0.0'

# Supported PSEditions
CompatiblePSEditions = 'Core', 'Desktop'

# ID used to uniquely identify this module
GUID = '89eceb4f-9916-4ec5-8499-d5cca97a9cae'

# Author of this module
Author = 'Microsoft Corporation'

# Company or vendor of this module
CompanyName = 'Microsoft Corporation'

# Copyright statement for this module
Copyright = 'Microsoft Corporation. All rights reserved.'

# Description of the functionality provided by this module
Description = 'Microsoft Azure PowerShell - Azure Synapse Analytics in Windows PowerShell and PowerShell Core.

For more information on Azure Synapse Analytics, please visit the following: https://azure.microsoft.com/en-us/services/synapse-analytics/'

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
RequiredAssemblies = 'Microsoft.Azure.Management.Synapse.dll', 
               'Azure.Analytics.Synapse.Spark.dll', 
               'Azure.Analytics.Synapse.AccessControl.dll', 
               'Azure.Analytics.Synapse.Artifacts.dll', 
               'Azure.Analytics.Synapse.ManagedPrivateEndpoints.dll', 
               'Microsoft.DataTransfer.Gateway.Encryption.dll', 
               'Synapse.Autorest\bin\Az.Synapse.private.dll'

# Script files (.ps1) that are run in the caller's environment prior to importing this module.
# ScriptsToProcess = @()

# Type files (.ps1xml) to be loaded when importing this module
# TypesToProcess = @()

# Format files (.ps1xml) to be loaded when importing this module
FormatsToProcess = 'Synapse.format.ps1xml', 
               'Synapse.Autorest\Az.Synapse.format.ps1xml'

# Modules to import as nested modules of the module specified in RootModule/ModuleToProcess
NestedModules = @('Az.Synapse.psm1', 'Synapse.Autorest\Az.Synapse.psm1')

# Functions to export from this module, for best performance, do not use wildcards and do not delete the entry, use an empty array if there are no functions to export.
FunctionsToExport = 'Add-AzSynapseKustoPoolLanguageExtension', 'Get-AzSynapseKustoPool', 
               'Get-AzSynapseKustoPoolAttachedDatabaseConfiguration', 
               'Get-AzSynapseKustoPoolDatabase', 
               'Get-AzSynapseKustoPoolDatabasePrincipalAssignment', 
               'Get-AzSynapseKustoPoolDataConnection', 
               'Get-AzSynapseKustoPoolFollowerDatabase', 
               'Get-AzSynapseKustoPoolLanguageExtension', 
               'Get-AzSynapseKustoPoolPrincipalAssignment', 
               'Get-AzSynapseKustoPoolSku', 
               'Invoke-AzSynapseDetachKustoPoolFollowerDatabase', 
               'New-AzSynapseKustoPool', 
               'New-AzSynapseKustoPoolAttachedDatabaseConfiguration', 
               'New-AzSynapseKustoPoolDatabase', 
               'New-AzSynapseKustoPoolDatabasePrincipalAssignment', 
               'New-AzSynapseKustoPoolDataConnection', 
               'New-AzSynapseKustoPoolPrincipalAssignment', 
               'Remove-AzSynapseKustoPool', 
               'Remove-AzSynapseKustoPoolAttachedDatabaseConfiguration', 
               'Remove-AzSynapseKustoPoolDatabase', 
               'Remove-AzSynapseKustoPoolDatabasePrincipalAssignment', 
               'Remove-AzSynapseKustoPoolDataConnection', 
               'Remove-AzSynapseKustoPoolLanguageExtension', 
               'Remove-AzSynapseKustoPoolPrincipalAssignment', 
               'Start-AzSynapseKustoPool', 'Stop-AzSynapseKustoPool', 
               'Update-AzSynapseKustoPool', 'Update-AzSynapseKustoPoolDatabase', 
               'Update-AzSynapseKustoPoolDataConnection'

# Cmdlets to export from this module, for best performance, do not use wildcards and do not delete the entry, use an empty array if there are no cmdlets to export.
CmdletsToExport = 'Get-AzSynapseSparkJob', 'Stop-AzSynapseSparkJob', 
               'Submit-AzSynapseSparkJob', 'Wait-AzSynapseSparkJob', 
               'Get-AzSynapseSparkSession', 'Reset-AzSynapseSparkSessionTimeout', 
               'Start-AzSynapseSparkSession', 'Stop-AzSynapseSparkSession', 
               'Get-AzSynapseSparkStatement', 'Invoke-AzSynapseSparkStatement', 
               'Stop-AzSynapseSparkStatement', 'Get-AzSynapseSparkPool', 
               'New-AzSynapseSparkPool', 'Remove-AzSynapseSparkPool', 
               'Update-AzSynapseSparkPool', 'Get-AzSynapseWorkspace', 
               'New-AzSynapseWorkspace', 'Remove-AzSynapseWorkspace', 
               'Update-AzSynapseWorkspace', 'Get-AzSynapseSqlPool', 
               'New-AzSynapseSqlPool', 'Remove-AzSynapseSqlPool', 
               'Get-AzSynapseSqlPoolGeoBackup', 'Get-AzSynapseDroppedSqlPool', 
               'Suspend-AzSynapseSqlPool', 'Resume-AzSynapseSqlPool', 
               'Get-AzSynapseSqlPoolRestorePoint', 'Restore-AzSynapseSqlPool', 
               'New-AzSynapseSqlPoolRestorePoint', 
               'Get-AzSynapseSqlActiveDirectoryAdministrator', 
               'Set-AzSynapseSqlActiveDirectoryAdministrator', 
               'Remove-AzSynapseSqlActiveDirectoryAdministrator', 
               'Get-AzSynapseSqlPoolAuditSetting', 
               'Set-AzSynapseSqlPoolAuditSetting', 
               'Reset-AzSynapseSqlPoolAuditSetting', 
               'Get-AzSynapseSqlAuditSetting', 'Set-AzSynapseSqlAuditSetting', 
               'Reset-AzSynapseSqlAuditSetting', 
               'Get-AzSynapseSqlAdvancedThreatProtectionSetting', 
               'Update-AzSynapseSqlAdvancedThreatProtectionSetting', 
               'Reset-AzSynapseSqlAdvancedThreatProtectionSetting', 
               'Get-AzSynapseSqlVulnerabilityAssessmentSetting', 
               'Update-AzSynapseSqlVulnerabilityAssessmentSetting', 
               'Reset-AzSynapseSqlVulnerabilityAssessmentSetting', 
               'Get-AzSynapseSqlPoolAdvancedThreatProtectionSetting', 
               'Update-AzSynapseSqlPoolAdvancedThreatProtectionSetting', 
               'Reset-AzSynapseSqlPoolAdvancedThreatProtectionSetting', 
               'Get-AzSynapseSqlPoolVulnerabilityAssessmentSetting', 
               'Update-AzSynapseSqlPoolVulnerabilityAssessmentSetting', 
               'Reset-AzSynapseSqlPoolVulnerabilityAssessmentSetting', 
               'Enable-AzSynapseSqlAdvancedDataSecurity', 
               'Disable-AzSynapseSqlAdvancedDataSecurity', 
               'Get-AzSynapseSqlAdvancedDataSecurityPolicy', 
               'Get-AzSynapseSqlPoolTransparentDataEncryption', 
               'Set-AzSynapseSqlPoolTransparentDataEncryption', 
               'Remove-AzSynapseSqlPoolRestorePoint', 'Update-AzSynapseSqlPool', 
               'Test-AzSynapseWorkspace', 'Test-AzSynapseSparkPool', 
               'Test-AzSynapseSqlPool', 'New-AzSynapseFirewallRule', 
               'Remove-AzSynapseFirewallRule', 'Get-AzSynapseFirewallRule', 
               'Update-AzSynapseFirewallRule', 'Get-AzSynapseRoleAssignment', 
               'New-AzSynapseRoleAssignment', 'Remove-AzSynapseRoleAssignment', 
               'Get-AzSynapseRoleDefinition', 'Get-AzSynapseRoleScope', 
               'Get-AzSynapseSqlDatabase', 'New-AzSynapseSqlDatabase', 
               'Remove-AzSynapseSqlDatabase', 'Update-AzSynapseSqlDatabase', 
               'Test-AzSynapseSqlDatabase', 
               'Disable-AzSynapseSqlPoolSensitivityRecommendation', 
               'Enable-AzSynapseSqlPoolSensitivityRecommendation', 
               'Get-AzSynapseSqlPoolSensitivityRecommendation', 
               'Get-AzSynapseSqlPoolSensitivityClassification', 
               'Remove-AzSynapseSqlPoolSensitivityClassification', 
               'Set-AzSynapseSqlPoolSensitivityClassification', 
               'Clear-AzSynapseSqlPoolVulnerabilityAssessmentRuleBaseline', 
               'Get-AzSynapseSqlPoolVulnerabilityAssessmentRuleBaseline', 
               'Set-AzSynapseSqlPoolVulnerabilityAssessmentRuleBaseline', 
               'Get-AzSynapseIntegrationRuntime', 
               'Get-AzSynapseIntegrationRuntimeKey', 
               'Get-AzSynapseIntegrationRuntimeMetric', 
               'Get-AzSynapseIntegrationRuntimeNode', 
               'Invoke-AzSynapseIntegrationRuntimeUpgrade', 
               'New-AzSynapseIntegrationRuntimeKey', 
               'Remove-AzSynapseIntegrationRuntime', 
               'Remove-AzSynapseIntegrationRuntimeNode', 
               'Set-AzSynapseIntegrationRuntime', 
               'Sync-AzSynapseIntegrationRuntimeCredential', 
               'Update-AzSynapseIntegrationRuntime', 
               'Update-AzSynapseIntegrationRuntimeNode', 'Get-AzSynapsePipeline', 
               'Remove-AzSynapsePipeline', 'Set-AzSynapsePipeline', 
               'Invoke-AzSynapsePipeline', 'Get-AzSynapsePipelineRun', 
               'Stop-AzSynapsePipelineRun', 'Get-AzSynapseActivityRun', 
               'Get-AzSynapseLinkedService', 'Set-AzSynapseLinkedService', 
               'Remove-AzSynapseLinkedService', 'Get-AzSynapseNotebook', 
               'Set-AzSynapseNotebook', 'Remove-AzSynapseNotebook', 
               'Export-AzSynapseNotebook', 'Set-AzSynapseTrigger', 
               'Get-AzSynapseTrigger', 'Remove-AzSynapseTrigger', 
               'Get-AzSynapseTriggerSubscriptionStatus', 
               'Add-AzSynapseTriggerSubscription', 
               'Remove-AzSynapseTriggerSubscription', 'Start-AzSynapseTrigger', 
               'Stop-AzSynapseTrigger', 'Get-AzSynapseTriggerRun', 
               'Set-AzSynapseDataset', 'Get-AzSynapseDataset', 
               'Remove-AzSynapseDataset', 'Set-AzSynapseDataFlow', 
               'Get-AzSynapseDataFlow', 'Remove-AzSynapseDataFlow', 
               'Get-AzSynapseSqlPoolVulnerabilityAssessmentScanRecord', 
               'Convert-AzSynapseSqlPoolVulnerabilityAssessmentScan', 
               'Start-AzSynapseSqlPoolVulnerabilityAssessmentScan', 
               'Get-AzSynapseManagedIdentitySqlControlSetting', 
               'Set-AzSynapseManagedIdentitySqlControlSetting', 
               'New-AzSynapseWorkspaceKey', 'Get-AzSynapseWorkspaceKey', 
               'Remove-AzSynapseWorkspaceKey', 'Enable-AzSynapseWorkspace', 
               'New-AzSynapseManagedVirtualNetworkConfig', 
               'Update-AzSynapseManagedVirtualNetworkConfig', 
               'Get-AzSynapseSparkJobDefinition', 
               'Remove-AzSynapseSparkJobDefinition', 
               'Set-AzSynapseSparkJobDefinition', 
               'Get-AzSynapseManagedPrivateEndpoint', 
               'New-AzSynapseManagedPrivateEndpoint', 
               'Remove-AzSynapseManagedPrivateEndpoint', 
               'New-AzSynapseGitRepositoryConfig', 'New-AzSynapseWorkspacePackage', 
               'Get-AzSynapseWorkspacePackage', 'Remove-AzSynapseWorkspacePackage', 
               'Start-AzSynapseIntegrationRuntime', 
               'Stop-AzSynapseIntegrationRuntime', 'Invoke-AzSynapseTriggerRun', 
               'Stop-AzSynapseTriggerRun', 
               'New-AzSynapseLinkedServiceEncryptedCredential', 
               'Get-AzSynapseDataFlowDebugSession', 
               'Add-AzSynapseDataFlowDebugSessionPackage', 
               'Invoke-AzSynapseDataFlowDebugSessionCommand', 
               'Stop-AzSynapseDataFlowDebugSession', 
               'Start-AzSynapseDataFlowDebugSession', 'Get-AzSynapseSqlScript', 
               'Remove-AzSynapseSqlScript', 'Export-AzSynapseSqlScript', 
               'Set-AzSynapseSqlScript', 'Get-AzSynapseSparkConfiguration', 
               'New-AzSynapseSparkConfiguration', 
               'Export-AzSynapseSparkConfiguration', 
               'Remove-AzSynapseSparkConfiguration', 'New-AzSynapseKqlScript', 
               'Get-AzSynapseKqlScript', 'Remove-AzSynapseKqlScript', 
               'Export-AzSynapseKqlScript', 
               'Get-AzSynapseActiveDirectoryOnlyAuthentication', 
               'Enable-AzSynapseActiveDirectoryOnlyAuthentication', 
               'Disable-AzSynapseActiveDirectoryOnlyAuthentication', 
               'Set-AzSynapseLinkConnectionLinkTable', 
               'Get-AzSynapseLinkConnectionLinkTable', 
               'Get-AzSynapseLinkConnectionLinkTableStatus', 
               'Update-AzSynapseLinkConnectionLandingZoneCredential', 
               'Get-AzSynapseLinkConnection', 'Set-AzSynapseLinkConnection', 
               'Start-AzSynapseLinkConnection', 'Stop-AzSynapseLinkConnection', 
               'Remove-AzSynapseLinkConnection', 
               'Get-AzSynapseLinkConnectionDetailedStatus'

# Variables to export from this module
# VariablesToExport = @()

# Aliases to export from this module, for best performance, do not use wildcards and do not delete the entry, use an empty array if there are no aliases to export.
AliasesToExport = 'New-AzSynapsePipeline', 'New-AzSynapseLinkedService', 
               'New-AzSynapseNotebook', 'Import-AzSynapseNotebook', 
               'New-AzSynapseTrigger', 'New-AzSynapseDataset', 
               'New-AzSynapseDataFlow', 'Get-AzSynapseSqlPoolAudit', 
               'Set-AzSynapseSqlPoolAudit', 'Remove-AzSynapseSqlPoolAudit', 
               'Get-AzSynapseSqlAudit', 'Set-AzSynapseSqlAudit', 
               'Remove-AzSynapseSqlAudit', 
               'Clear-AzSynapseSqlAdvancedThreatProtectionSetting', 
               'Clear-AzSynapseSqlVulnerabilityAssessmentSetting', 
               'Clear-AzSynapseSqlPoolAdvancedThreatProtectionSetting', 
               'Clear-AzSynapseSqlPoolVulnerabilityAssessmentSetting', 
               'Enable-AzSynapseSqlAdvancedThreatProtection', 
               'Disable-AzSynapseSqlAdvancedThreatProtection', 
               'New-AzSynapseSparkJobDefinition', 
               'Set-AzSynapseManagedPrivateEndpoint', 'New-AzSynapseSqlScript', 
               'Import-AzSynapseSqlScript', 'Set-AzSynapseSparkConfiguration', 
               'Import-AzSynapseSparkConfiguration', 'Set-AzSynapseKqlScript', 
               'Import-AzSynapseKqlScript', 'New-AzSynapseLinkConnection'

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
        Tags = 'Azure','ResourceManager','ARM','Synapse','Analytics'

        # A URL to the license for this module.
        LicenseUri = 'https://aka.ms/azps-license'

        # A URL to the main website for this project.
        ProjectUri = 'https://github.com/Azure/azure-powershell'

        # A URL to an icon representing this module.
        # IconUri = ''

        # ReleaseNotes of this module
        ReleaseNotes = '* [Breaking Change] Updated models of Synapse Link for Azure Sql Database
* Updated ''New-AzSynapseWorkspace'' and ''Update-AzSynapseWorkspace'' to support for user assigned managed identity (UAMI) by ''-UserAssignedIdentityAction'' and ''-UserAssignedIdentityId''
* Added EnablePublicNetworkAccess parameter to ''New-AzureSynapseWorkspace'' and ''Update-AzSynapseWorkspace'''

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
# MIInngYJKoZIhvcNAQcCoIInjzCCJ4sCAQExDzANBglghkgBZQMEAgEFADB5Bgor
# BgEEAYI3AgEEoGswaTA0BgorBgEEAYI3AgEeMCYCAwEAAAQQH8w7YFlLCE63JNLG
# KX7zUQIBAAIBAAIBAAIBAAIBADAxMA0GCWCGSAFlAwQCAQUABCBVeit1qpG4UiLn
# p2Vxv1FkntihS2dT+Zr+sCEj8oglf6CCDYEwggX/MIID56ADAgECAhMzAAACzI61
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
# RcBCyZt2WwqASGv9eZ/BvW1taslScxMNelDNMYIZczCCGW8CAQEwgZUwfjELMAkG
# A1UEBhMCVVMxEzARBgNVBAgTCldhc2hpbmd0b24xEDAOBgNVBAcTB1JlZG1vbmQx
# HjAcBgNVBAoTFU1pY3Jvc29mdCBDb3Jwb3JhdGlvbjEoMCYGA1UEAxMfTWljcm9z
# b2Z0IENvZGUgU2lnbmluZyBQQ0EgMjAxMQITMwAAAsyOtZamvdHJTgAAAAACzDAN
# BglghkgBZQMEAgEFAKCBrjAZBgkqhkiG9w0BCQMxDAYKKwYBBAGCNwIBBDAcBgor
# BgEEAYI3AgELMQ4wDAYKKwYBBAGCNwIBFTAvBgkqhkiG9w0BCQQxIgQgw+pBif2o
# 2iogJNlZqL3qJwjZwk69W+Ahb7z4pdHPymgwQgYKKwYBBAGCNwIBDDE0MDKgFIAS
# AE0AaQBjAHIAbwBzAG8AZgB0oRqAGGh0dHA6Ly93d3cubWljcm9zb2Z0LmNvbTAN
# BgkqhkiG9w0BAQEFAASCAQAJ5EexS1G6HyUsmRCnS4eR9DLdbXSTdjkkneOurZSw
# 0/YgsyOr4AvydKiGGAz4xMr6dXYTs1Ep5NBUCPkmOStviwSWD+jfiicAE8slWuI/
# ooaoecyiItZvPqe1vhjReOoRB/IjWGUMC7lGBWt+3cpU4wZSDnP3BwDvEQYEu8Ng
# uQ8lwWIP1ZgDI2G5mnaXR7H7YxDYimOgQrurlCiUitpEL1k3TvuPiqLdRpdBq/Lx
# d5+pXNhZ0Cni0SdWlTWElKOLAtdzWvHXVxTydKM/K1m/oQTCHdItPYdXWLO/MZuS
# ebN93kmKgHy9zsuAYVjruvFUjEHco7hs8GcxQPibJOYpoYIW/TCCFvkGCisGAQQB
# gjcDAwExghbpMIIW5QYJKoZIhvcNAQcCoIIW1jCCFtICAQMxDzANBglghkgBZQME
# AgEFADCCAVEGCyqGSIb3DQEJEAEEoIIBQASCATwwggE4AgEBBgorBgEEAYRZCgMB
# MDEwDQYJYIZIAWUDBAIBBQAEIC9YIiEbbh0qFKYQK5dgDok/p6VirSs1ozTBbsQ7
# 7qksAgZjR/dXb1wYEzIwMjIxMDE3MDgwNDUzLjczOVowBIACAfSggdCkgc0wgcox
# CzAJBgNVBAYTAlVTMRMwEQYDVQQIEwpXYXNoaW5ndG9uMRAwDgYDVQQHEwdSZWRt
# b25kMR4wHAYDVQQKExVNaWNyb3NvZnQgQ29ycG9yYXRpb24xJTAjBgNVBAsTHE1p
# Y3Jvc29mdCBBbWVyaWNhIE9wZXJhdGlvbnMxJjAkBgNVBAsTHVRoYWxlcyBUU1Mg
# RVNOOjNCQkQtRTMzOC1FOUExMSUwIwYDVQQDExxNaWNyb3NvZnQgVGltZS1TdGFt
# cCBTZXJ2aWNloIIRVDCCBwwwggT0oAMCAQICEzMAAAGd/onl+Xu7TMAAAQAAAZ0w
# DQYJKoZIhvcNAQELBQAwfDELMAkGA1UEBhMCVVMxEzARBgNVBAgTCldhc2hpbmd0
# b24xEDAOBgNVBAcTB1JlZG1vbmQxHjAcBgNVBAoTFU1pY3Jvc29mdCBDb3Jwb3Jh
# dGlvbjEmMCQGA1UEAxMdTWljcm9zb2Z0IFRpbWUtU3RhbXAgUENBIDIwMTAwHhcN
# MjExMjAyMTkwNTE5WhcNMjMwMjI4MTkwNTE5WjCByjELMAkGA1UEBhMCVVMxEzAR
# BgNVBAgTCldhc2hpbmd0b24xEDAOBgNVBAcTB1JlZG1vbmQxHjAcBgNVBAoTFU1p
# Y3Jvc29mdCBDb3Jwb3JhdGlvbjElMCMGA1UECxMcTWljcm9zb2Z0IEFtZXJpY2Eg
# T3BlcmF0aW9uczEmMCQGA1UECxMdVGhhbGVzIFRTUyBFU046M0JCRC1FMzM4LUU5
# QTExJTAjBgNVBAMTHE1pY3Jvc29mdCBUaW1lLVN0YW1wIFNlcnZpY2UwggIiMA0G
# CSqGSIb3DQEBAQUAA4ICDwAwggIKAoICAQDgEWh60BxJFuR+mlFuFCtG3mR2XHNC
# fPMTXcp06YewAtS1bbGzK7hDC1JRMethcmiKM/ebdCcG6v6k4lQyLlSaHmHkIUC5
# pNEtlutzpsVN+jo+Nbdyu9w0BMh4KzfduLdxbda1VztKDSXjE3eEl5Of+5hY3pHo
# JX9Nh/5r4tc4Nvqt9tvVcYeIxpchZ81AK3+UzpA+hcR6HS67XA8+cQUB1fGyRoVh
# 1sCu0+ofdVDcWOG/tcSKtJch+eRAVDe7IRm84fPsPTFz2dIJRJA/PUaZR+3xW4Fd
# 1ZbLNa/wMbq3vaYtKogaSZiiCyUxU7mwoA32iyTcGHC7hH8MgZWVOEBu7CfNvMyr
# sR8Quvu3m91Dqsc5gZHMxvgeAO9LLiaaU+klYmFWQvLXpilS1iDXb/82+TjwGtxE
# nc8x/EvLkk7Ukj4uKZ6J8ynlgPhPRqejcoKlHsKgxWmD3wzEXW1a09d1L2Io004w
# 01i31QAMB/GLhgmmMIE5Z4VI2Jlh9sX2nkyh5QOnYOznECk4za9cIdMKP+sde2nh
# vvcSdrGXQ8fWO/+N1mjT0SIkX41XZjm+QMGR03ta63pfsj3g3E5a1r0o9aHgcuph
# W0lwrbBA/TGMo5zC8Z5WI+Rwpr0MAiDZGy5h2+uMx/2+/F4ZiyKauKXqd7rIl1se
# AYQYxKQ4SemB0QIDAQABo4IBNjCCATIwHQYDVR0OBBYEFNbfEI3hKujMnF4Rgdva
# y4rZG1XkMB8GA1UdIwQYMBaAFJ+nFV0AXmJdg/Tl0mWnG1M1GelyMF8GA1UdHwRY
# MFYwVKBSoFCGTmh0dHA6Ly93d3cubWljcm9zb2Z0LmNvbS9wa2lvcHMvY3JsL01p
# Y3Jvc29mdCUyMFRpbWUtU3RhbXAlMjBQQ0ElMjAyMDEwKDEpLmNybDBsBggrBgEF
# BQcBAQRgMF4wXAYIKwYBBQUHMAKGUGh0dHA6Ly93d3cubWljcm9zb2Z0LmNvbS9w
# a2lvcHMvY2VydHMvTWljcm9zb2Z0JTIwVGltZS1TdGFtcCUyMFBDQSUyMDIwMTAo
# MSkuY3J0MAwGA1UdEwEB/wQCMAAwEwYDVR0lBAwwCgYIKwYBBQUHAwgwDQYJKoZI
# hvcNAQELBQADggIBAIbHcpxLt2h0LNJ334iCNZYsta2Eant9JUeipwebFIwQMij7
# SIQ83iJ4Y4OL5YwlppwvF516AhcHevYMScY6NAXSAGhp5xYtkEckeV6gNbcp3C4I
# 3yotWvDd9KQCh7LdIhpiYCde0SF4N5JRZUHXIMczvNhe8+dEuiCnS1sWiGPUFzNJ
# fsAcNs1aBkHItaSxM0AVHgZfgK8R2ihVktirxwYG0T9o1h0BkRJ3PfuJF+nOjt1+
# eFYYgq+bOLQs/SdgY4DbUVfrtLdEg2TbS+siZw4dqzM+tLdye5XGyJlKBX7aIs4x
# f1Hh1ymMX24YJlm8vyX+W4x8yytPmziNHtshxf7lKd1Pm7t+7UUzi8QBhby0vYrf
# rnoW1Kws+z34uoc2+D2VFxrH39xq/8KbeeBpuL5++CipoZQsd5QO5Ni81nBlwi/7
# 1JsZDEomso/k4JioyvVAM2818CgnsNJnMZZSxM5kyeRdYh9IbjGdPddPVcv0kPKr
# NalPtRO4ih0GVkL/a4BfEBtXDeEUIsM4A00QehD+ESV3I0UbW+b4NTmbRcjnVFk5
# t6nuK/FoFQc5N4XueYAOw2mMDhAoFE+2xtTHk2ewd9xGkbFDl2b6u/FbhsUb5+Xo
# P0PdJ3FTNP6G/7Vr4sIOxar4PpY674aQCiMSywwtIWOoqRS/OP/rSjF9E/xfMIIH
# cTCCBVmgAwIBAgITMwAAABXF52ueAptJmQAAAAAAFTANBgkqhkiG9w0BAQsFADCB
# iDELMAkGA1UEBhMCVVMxEzARBgNVBAgTCldhc2hpbmd0b24xEDAOBgNVBAcTB1Jl
# ZG1vbmQxHjAcBgNVBAoTFU1pY3Jvc29mdCBDb3Jwb3JhdGlvbjEyMDAGA1UEAxMp
# TWljcm9zb2Z0IFJvb3QgQ2VydGlmaWNhdGUgQXV0aG9yaXR5IDIwMTAwHhcNMjEw
# OTMwMTgyMjI1WhcNMzAwOTMwMTgzMjI1WjB8MQswCQYDVQQGEwJVUzETMBEGA1UE
# CBMKV2FzaGluZ3RvbjEQMA4GA1UEBxMHUmVkbW9uZDEeMBwGA1UEChMVTWljcm9z
# b2Z0IENvcnBvcmF0aW9uMSYwJAYDVQQDEx1NaWNyb3NvZnQgVGltZS1TdGFtcCBQ
# Q0EgMjAxMDCCAiIwDQYJKoZIhvcNAQEBBQADggIPADCCAgoCggIBAOThpkzntHIh
# C3miy9ckeb0O1YLT/e6cBwfSqWxOdcjKNVf2AX9sSuDivbk+F2Az/1xPx2b3lVNx
# WuJ+Slr+uDZnhUYjDLWNE893MsAQGOhgfWpSg0S3po5GawcU88V29YZQ3MFEyHFc
# UTE3oAo4bo3t1w/YJlN8OWECesSq/XJprx2rrPY2vjUmZNqYO7oaezOtgFt+jBAc
# nVL+tuhiJdxqD89d9P6OU8/W7IVWTe/dvI2k45GPsjksUZzpcGkNyjYtcI4xyDUo
# veO0hyTD4MmPfrVUj9z6BVWYbWg7mka97aSueik3rMvrg0XnRm7KMtXAhjBcTyzi
# YrLNueKNiOSWrAFKu75xqRdbZ2De+JKRHh09/SDPc31BmkZ1zcRfNN0Sidb9pSB9
# fvzZnkXftnIv231fgLrbqn427DZM9ituqBJR6L8FA6PRc6ZNN3SUHDSCD/AQ8rdH
# GO2n6Jl8P0zbr17C89XYcz1DTsEzOUyOArxCaC4Q6oRRRuLRvWoYWmEBc8pnol7X
# KHYC4jMYctenIPDC+hIK12NvDMk2ZItboKaDIV1fMHSRlJTYuVD5C4lh8zYGNRiE
# R9vcG9H9stQcxWv2XFJRXRLbJbqvUAV6bMURHXLvjflSxIUXk8A8FdsaN8cIFRg/
# eKtFtvUeh17aj54WcmnGrnu3tz5q4i6tAgMBAAGjggHdMIIB2TASBgkrBgEEAYI3
# FQEEBQIDAQABMCMGCSsGAQQBgjcVAgQWBBQqp1L+ZMSavoKRPEY1Kc8Q/y8E7jAd
# BgNVHQ4EFgQUn6cVXQBeYl2D9OXSZacbUzUZ6XIwXAYDVR0gBFUwUzBRBgwrBgEE
# AYI3TIN9AQEwQTA/BggrBgEFBQcCARYzaHR0cDovL3d3dy5taWNyb3NvZnQuY29t
# L3BraW9wcy9Eb2NzL1JlcG9zaXRvcnkuaHRtMBMGA1UdJQQMMAoGCCsGAQUFBwMI
# MBkGCSsGAQQBgjcUAgQMHgoAUwB1AGIAQwBBMAsGA1UdDwQEAwIBhjAPBgNVHRMB
# Af8EBTADAQH/MB8GA1UdIwQYMBaAFNX2VsuP6KJcYmjRPZSQW9fOmhjEMFYGA1Ud
# HwRPME0wS6BJoEeGRWh0dHA6Ly9jcmwubWljcm9zb2Z0LmNvbS9wa2kvY3JsL3By
# b2R1Y3RzL01pY1Jvb0NlckF1dF8yMDEwLTA2LTIzLmNybDBaBggrBgEFBQcBAQRO
# MEwwSgYIKwYBBQUHMAKGPmh0dHA6Ly93d3cubWljcm9zb2Z0LmNvbS9wa2kvY2Vy
# dHMvTWljUm9vQ2VyQXV0XzIwMTAtMDYtMjMuY3J0MA0GCSqGSIb3DQEBCwUAA4IC
# AQCdVX38Kq3hLB9nATEkW+Geckv8qW/qXBS2Pk5HZHixBpOXPTEztTnXwnE2P9pk
# bHzQdTltuw8x5MKP+2zRoZQYIu7pZmc6U03dmLq2HnjYNi6cqYJWAAOwBb6J6Gng
# ugnue99qb74py27YP0h1AdkY3m2CDPVtI1TkeFN1JFe53Z/zjj3G82jfZfakVqr3
# lbYoVSfQJL1AoL8ZthISEV09J+BAljis9/kpicO8F7BUhUKz/AyeixmJ5/ALaoHC
# gRlCGVJ1ijbCHcNhcy4sa3tuPywJeBTpkbKpW99Jo3QMvOyRgNI95ko+ZjtPu4b6
# MhrZlvSP9pEB9s7GdP32THJvEKt1MMU0sHrYUP4KWN1APMdUbZ1jdEgssU5HLcEU
# BHG/ZPkkvnNtyo4JvbMBV0lUZNlz138eW0QBjloZkWsNn6Qo3GcZKCS6OEuabvsh
# VGtqRRFHqfG3rsjoiV5PndLQTHa1V1QJsWkBRH58oWFsc/4Ku+xBZj1p/cvBQUl+
# fpO+y/g75LcVv7TOPqUxUYS8vwLBgqJ7Fx0ViY1w/ue10CgaiQuPNtq6TPmb/wrp
# NPgkNWcr4A245oyZ1uEi6vAnQj0llOZ0dFtq0Z4+7X6gMTN9vMvpe784cETRkPHI
# qzqKOghif9lwY1NNje6CbaUFEMFxBmoQtB1VM1izoXBm8qGCAsswggI0AgEBMIH4
# oYHQpIHNMIHKMQswCQYDVQQGEwJVUzETMBEGA1UECBMKV2FzaGluZ3RvbjEQMA4G
# A1UEBxMHUmVkbW9uZDEeMBwGA1UEChMVTWljcm9zb2Z0IENvcnBvcmF0aW9uMSUw
# IwYDVQQLExxNaWNyb3NvZnQgQW1lcmljYSBPcGVyYXRpb25zMSYwJAYDVQQLEx1U
# aGFsZXMgVFNTIEVTTjozQkJELUUzMzgtRTlBMTElMCMGA1UEAxMcTWljcm9zb2Z0
# IFRpbWUtU3RhbXAgU2VydmljZaIjCgEBMAcGBSsOAwIaAxUAt+lDSRX92KFyij71
# Jn20CoSyyuCggYMwgYCkfjB8MQswCQYDVQQGEwJVUzETMBEGA1UECBMKV2FzaGlu
# Z3RvbjEQMA4GA1UEBxMHUmVkbW9uZDEeMBwGA1UEChMVTWljcm9zb2Z0IENvcnBv
# cmF0aW9uMSYwJAYDVQQDEx1NaWNyb3NvZnQgVGltZS1TdGFtcCBQQ0EgMjAxMDAN
# BgkqhkiG9w0BAQUFAAIFAOb3ErgwIhgPMjAyMjEwMTcwNzMxMDRaGA8yMDIyMTAx
# ODA3MzEwNFowdDA6BgorBgEEAYRZCgQBMSwwKjAKAgUA5vcSuAIBADAHAgEAAgIV
# XDAHAgEAAgIR1TAKAgUA5vhkOAIBADA2BgorBgEEAYRZCgQCMSgwJjAMBgorBgEE
# AYRZCgMCoAowCAIBAAIDB6EgoQowCAIBAAIDAYagMA0GCSqGSIb3DQEBBQUAA4GB
# AIOOuR/Hhkaovt8E+P/I3pBLyrB0R5YrqwSShBExARFOJ1x0RGQfdKnXblPkb0x6
# X5+1y0ttHIKaoIk8FYxTNe5D8kXN+j62glv6Yus7qT8yNhrYg9BheYwznQ+mstAz
# ZcR+RyWkOBLkXWHcErH1oVjDTjtHCs1ikBz2sJo4pzQmMYIEDTCCBAkCAQEwgZMw
# fDELMAkGA1UEBhMCVVMxEzARBgNVBAgTCldhc2hpbmd0b24xEDAOBgNVBAcTB1Jl
# ZG1vbmQxHjAcBgNVBAoTFU1pY3Jvc29mdCBDb3Jwb3JhdGlvbjEmMCQGA1UEAxMd
# TWljcm9zb2Z0IFRpbWUtU3RhbXAgUENBIDIwMTACEzMAAAGd/onl+Xu7TMAAAQAA
# AZ0wDQYJYIZIAWUDBAIBBQCgggFKMBoGCSqGSIb3DQEJAzENBgsqhkiG9w0BCRAB
# BDAvBgkqhkiG9w0BCQQxIgQg37QOva7aazc06F8vDuW1xhfdHv6vW6mDKI9SC59+
# StswgfoGCyqGSIb3DQEJEAIvMYHqMIHnMIHkMIG9BCD1HmOt4IqgT4A0n4JblX/f
# zFLyEu4OBDOb+mpMlYdFoTCBmDCBgKR+MHwxCzAJBgNVBAYTAlVTMRMwEQYDVQQI
# EwpXYXNoaW5ndG9uMRAwDgYDVQQHEwdSZWRtb25kMR4wHAYDVQQKExVNaWNyb3Nv
# ZnQgQ29ycG9yYXRpb24xJjAkBgNVBAMTHU1pY3Jvc29mdCBUaW1lLVN0YW1wIFBD
# QSAyMDEwAhMzAAABnf6J5fl7u0zAAAEAAAGdMCIEIM/qrr8d+io08xWtJbX+zB39
# ikpPMi3B7Uu6y9h/nZx7MA0GCSqGSIb3DQEBCwUABIICAN4JpecomMcCKsx79/vr
# I5Dlnn01Yab4ru6OZ0cbdVAqzny3pEcvsggdAXSprgjmtiEsmKDH6TWNlnZ48MkQ
# 1B3mXKfm7ZmFrPLzMFRDb48+jMFIJ8rsydzzsm3WdOc6UTI+nUKoMIX6LPZGTyZg
# s7aV66c68kn1bvZyOhzXFTkU0/mu4RPR5cvQTIvzkev3mUIU1xIdjTLzSJn6EFIh
# jZNjyLbZZ/33LipdwJLhUykeIP1Gbx0abqPHyixcd5CQPeYDRdhx8rkNJ4ZRLURq
# a7TjK/stGFewWz/Bsr9P787Hnfa+J1ae8po+0RPDkoVb3WzuNsupFywKJ50JTeak
# H6OR4hKawOIKBVg5I7Cgf4DMOh8u69ZxnszEEJSLfpNoT/+rWLar1F7JjNu3Nx8+
# fuedWAJWHWkZtk5NiX0tvwN6EE93m6xnCU6WBK6469MubKZ4BizA1DCYhaH819rI
# KjCXkPuRIz01IbmD3UgS2FT7TYhtwjKkyTmphMuqOYkOCWK4raWVWiuIgIV4Ai6r
# ywgnLGWRQb2WztLlc1HNreTNCuymwmEEDqArKBaFKXJkqLfA9rSK3VJXEEJTCnpH
# s7apjJnkvhtAM+O462YZ5NZNzReSBwJnkYrAq9Kjda/5sMydAxFR/BXFkaWwEvO5
# VuyfQJJWHLgMe53/MkTb90mD
# SIG # End signature block
