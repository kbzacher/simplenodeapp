#
# Module manifest for module 'Az.Sql'
#
# Generated by: Microsoft Corporation
#
# Generated on: 10/28/2022
#

@{

# Script module or binary module file associated with this manifest.
RootModule = 'Az.Sql.psm1'

# Version number of this module.
ModuleVersion = '4.1.0'

# Supported PSEditions
CompatiblePSEditions = 'Core', 'Desktop'

# ID used to uniquely identify this module
GUID = 'f088f4ab-1b59-4836-a6e0-4e14d15800c6'

# Author of this module
Author = 'Microsoft Corporation'

# Company or vendor of this module
CompanyName = 'Microsoft Corporation'

# Copyright statement for this module
Copyright = 'Microsoft Corporation. All rights reserved.'

# Description of the functionality provided by this module
Description = 'Microsoft Azure PowerShell - SQL service cmdlets for Azure Resource Manager in Windows PowerShell and PowerShell Core.

For more information on SQL, please visit the following: https://docs.microsoft.com/azure/sql-database/'

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
RequiredAssemblies = 'Microsoft.Azure.PowerShell.Sql.Sdk.dll', 
               'Microsoft.Azure.PowerShell.Cmdlets.Sql.LegacySdk.dll'

# Script files (.ps1) that are run in the caller's environment prior to importing this module.
# ScriptsToProcess = @()

# Type files (.ps1xml) to be loaded when importing this module
TypesToProcess = 'Sql.types.ps1xml'

# Format files (.ps1xml) to be loaded when importing this module
FormatsToProcess = 'Sql.format.ps1xml'

# Modules to import as nested modules of the module specified in RootModule/ModuleToProcess
NestedModules = @()

# Functions to export from this module, for best performance, do not use wildcards and do not delete the entry, use an empty array if there are no functions to export.
FunctionsToExport = @()

# Cmdlets to export from this module, for best performance, do not use wildcards and do not delete the entry, use an empty array if there are no cmdlets to export.
CmdletsToExport = 'Get-AzSqlDatabaseTransparentDataEncryption', 
               'Get-AzSqlDatabaseTransparentDataEncryptionActivity', 
               'Set-AzSqlDatabaseTransparentDataEncryption', 
               'Get-AzSqlDatabaseUpgradeHint', 'Get-AzSqlServerUpgradeHint', 
               'Get-AzSqlServerServiceObjective', 
               'Get-AzSqlServerActiveDirectoryAdministrator', 
               'Remove-AzSqlServerActiveDirectoryAdministrator', 
               'Set-AzSqlServerActiveDirectoryAdministrator', 'Get-AzSqlServer', 
               'New-AzSqlServer', 'Remove-AzSqlServer', 'Set-AzSqlServer', 
               'Get-AzSqlServerCommunicationLink', 
               'New-AzSqlServerCommunicationLink', 
               'Remove-AzSqlServerCommunicationLink', 
               'Get-AzSqlDatabaseReplicationLink', 'New-AzSqlDatabaseCopy', 
               'New-AzSqlDatabaseSecondary', 'Remove-AzSqlDatabaseSecondary', 
               'Set-AzSqlDatabaseSecondary', 'Get-AzSqlElasticPoolRecommendation', 
               'Get-AzSqlDatabaseIndexRecommendation', 
               'Start-AzSqlDatabaseExecuteIndexRecommendation', 
               'Stop-AzSqlDatabaseExecuteIndexRecommendation', 
               'Get-AzSqlServerFirewallRule', 'New-AzSqlServerFirewallRule', 
               'Remove-AzSqlServerFirewallRule', 'Set-AzSqlServerFirewallRule', 
               'Get-AzSqlServerIpv6FirewallRule', 
               'New-AzSqlServerIpv6FirewallRule', 
               'Remove-AzSqlServerIpv6FirewallRule', 
               'Set-AzSqlServerIpv6FirewallRule', 
               'Get-AzSqlServerOutboundFirewallRule', 
               'New-AzSqlServerOutboundFirewallRule', 
               'Remove-AzSqlServerOutboundFirewallRule', 'Get-AzSqlElasticPool', 
               'Get-AzSqlElasticPoolActivity', 'Get-AzSqlElasticPoolDatabase', 
               'New-AzSqlElasticPool', 'Remove-AzSqlElasticPool', 
               'Set-AzSqlElasticPool', 
               'Get-AzSqlServerDisasterRecoveryConfiguration', 
               'Get-AzSqlServerDisasterRecoveryConfigurationActivity', 
               'New-AzSqlServerDisasterRecoveryConfiguration', 
               'Remove-AzSqlServerDisasterRecoveryConfiguration', 
               'Set-AzSqlServerDisasterRecoveryConfiguration', 
               'Resume-AzSqlDatabase', 'Suspend-AzSqlDatabase', 
               'Get-AzSqlDatabaseDataMaskingPolicy', 
               'Get-AzSqlDatabaseDataMaskingRule', 
               'New-AzSqlDatabaseDataMaskingRule', 
               'Remove-AzSqlDatabaseDataMaskingRule', 
               'Set-AzSqlDatabaseDataMaskingPolicy', 
               'Set-AzSqlDatabaseDataMaskingRule', 'Get-AzSqlCapability', 
               'Get-AzSqlDatabase', 'Get-AzSqlDatabaseActivity', 
               'Get-AzSqlDatabaseExpanded', 'New-AzSqlDatabase', 
               'Remove-AzSqlDatabase', 'Set-AzSqlDatabase', 
               'Get-AzSqlDatabaseImportExportStatus', 'New-AzSqlDatabaseExport', 
               'New-AzSqlDatabaseImport', 'Get-AzSqlDatabaseGeoBackupPolicy', 
               'Set-AzSqlDatabaseGeoBackupPolicy', 
               'Get-AzSqlDatabaseBackupShortTermRetentionPolicy', 
               'Set-AzSqlDatabaseBackupShortTermRetentionPolicy', 
               'Get-AzSqlDatabaseBackupLongTermRetentionPolicy', 
               'Set-AzSqlDatabaseBackupLongTermRetentionPolicy', 
               'Get-AzSqlDatabaseLongTermRetentionBackup', 
               'Update-AzSqlDatabaseLongTermRetentionBackup', 
               'Copy-AzSqlDatabaseLongTermRetentionBackup', 
               'Remove-AzSqlDatabaseLongTermRetentionBackup', 
               'Get-AzSqlDeletedDatabaseBackup', 'Get-AzSqlDatabaseGeoBackup', 
               'Restore-AzSqlDatabase', 'Get-AzSqlDatabaseRestorePoint', 
               'Get-AzSqlDatabaseRecommendedAction', 
               'Get-AzSqlElasticPoolRecommendedAction', 
               'Get-AzSqlServerRecommendedAction', 
               'Set-AzSqlDatabaseRecommendedActionState', 
               'Set-AzSqlElasticPoolRecommendedActionState', 
               'Set-AzSqlServerRecommendedActionState', 
               'Get-AzSqlElasticPoolAdvisor', 'Get-AzSqlServerAdvisor', 
               'Set-AzSqlElasticPoolAdvisorAutoExecuteStatus', 
               'Set-AzSqlServerAdvisorAutoExecuteStatus', 
               'Get-AzSqlDatabaseAdvisor', 
               'Set-AzSqlDatabaseAdvisorAutoExecuteStatus', 
               'Get-AzSqlServerTransparentDataEncryptionProtector', 
               'Set-AzSqlServerTransparentDataEncryptionProtector', 
               'Add-AzSqlServerKeyVaultKey', 'Get-AzSqlServerKeyVaultKey', 
               'Remove-AzSqlServerKeyVaultKey', 'Get-AzSqlDatabaseFailoverGroup', 
               'New-AzSqlDatabaseFailoverGroup', 
               'Add-AzSqlDatabaseToFailoverGroup', 
               'Remove-AzSqlDatabaseFromFailoverGroup', 
               'Remove-AzSqlDatabaseFailoverGroup', 
               'Set-AzSqlDatabaseFailoverGroup', 
               'Switch-AzSqlDatabaseFailoverGroup', 'New-AzSqlSyncGroup', 
               'Update-AzSqlSyncGroup', 'Get-AzSqlSyncGroup', 
               'Get-AzSqlSyncGroupLog', 'Remove-AzSqlSyncGroup', 
               'Update-AzSqlSyncSchema', 'Get-AzSqlSyncSchema', 
               'Start-AzSqlSyncGroupSync', 'Stop-AzSqlSyncGroupSync', 
               'New-AzSqlSyncMember', 'Update-AzSqlSyncMember', 
               'Get-AzSqlSyncMember', 'Remove-AzSqlSyncMember', 'New-AzSqlSyncAgent', 
               'Get-AzSqlSyncAgent', 'Remove-AzSqlSyncAgent', 
               'New-AzSqlSyncAgentKey', 'Get-AzSqlSyncAgentLinkedDatabase', 
               'New-AzSqlServerVirtualNetworkRule', 
               'Set-AzSqlServerVirtualNetworkRule', 
               'Get-AzSqlServerVirtualNetworkRule', 
               'Remove-AzSqlServerVirtualNetworkRule', 
               'Stop-AzSqlDatabaseActivity', 'Get-AzSqlServerDnsAlias', 
               'Remove-AzSqlServerDnsAlias', 'New-AzSqlServerDnsAlias', 
               'Set-AzSqlServerDnsAlias', 'New-AzSqlDatabaseRestorePoint', 
               'Remove-AzSqlDatabaseRestorePoint', 'Stop-AzSqlElasticPoolActivity', 
               'Add-AzSqlServerTransparentDataEncryptionCertificate', 
               'Add-AzSqlManagedInstanceTransparentDataEncryptionCertificate', 
               'Update-AzSqlDatabaseVulnerabilityAssessmentSetting', 
               'Get-AzSqlDatabaseVulnerabilityAssessmentSetting', 
               'Clear-AzSqlDatabaseVulnerabilityAssessmentSetting', 
               'Set-AzSqlDatabaseVulnerabilityAssessmentRuleBaseline', 
               'Get-AzSqlDatabaseVulnerabilityAssessmentRuleBaseline', 
               'Clear-AzSqlDatabaseVulnerabilityAssessmentRuleBaseline', 
               'Convert-AzSqlDatabaseVulnerabilityAssessmentScan', 
               'Get-AzSqlDatabaseVulnerabilityAssessmentScanRecord', 
               'Start-AzSqlDatabaseVulnerabilityAssessmentScan', 
               'Get-AzSqlInstance', 'New-AzSqlInstance', 'Remove-AzSqlInstance', 
               'Get-AzSqlInstanceOperation', 'Stop-AzSqlInstanceOperation', 
               'Set-AzSqlInstance', 'Get-AzSqlInstanceDatabase', 
               'New-AzSqlInstanceDatabase', 'Remove-AzSqlInstanceDatabase', 
               'Restore-AzSqlInstanceDatabase', 
               'Update-AzSqlInstanceDatabaseVulnerabilityAssessmentSetting', 
               'Get-AzSqlInstanceDatabaseVulnerabilityAssessmentSetting', 
               'Clear-AzSqlInstanceDatabaseVulnerabilityAssessmentSetting', 
               'Set-AzSqlInstanceDatabaseVulnerabilityAssessmentRuleBaseline', 
               'Get-AzSqlInstanceDatabaseVulnerabilityAssessmentRuleBaseline', 
               'Clear-AzSqlInstanceDatabaseVulnerabilityAssessmentRuleBaseline', 
               'Convert-AzSqlInstanceDatabaseVulnerabilityAssessmentScan', 
               'Get-AzSqlInstanceDatabaseVulnerabilityAssessmentScanRecord', 
               'Start-AzSqlInstanceDatabaseVulnerabilityAssessmentScan', 
               'Enable-AzSqlInstanceAdvancedDataSecurity', 
               'Disable-AzSqlInstanceAdvancedDataSecurity', 
               'Get-AzSqlInstanceAdvancedDataSecurityPolicy', 
               'Get-AzSqlInstanceDatabaseGeoBackup', 
               'Get-AzSqlInstanceDatabaseBackupShortTermRetentionPolicy', 
               'Set-AzSqlInstanceDatabaseBackupShortTermRetentionPolicy', 
               'Get-AzSqlDeletedInstanceDatabaseBackup', 
               'Update-AzSqlInstanceVulnerabilityAssessmentSetting', 
               'Get-AzSqlInstanceVulnerabilityAssessmentSetting', 
               'Clear-AzSqlInstanceVulnerabilityAssessmentSetting', 
               'Update-AzSqlServerVulnerabilityAssessmentSetting', 
               'Get-AzSqlServerVulnerabilityAssessmentSetting', 
               'Clear-AzSqlServerVulnerabilityAssessmentSetting', 
               'Get-AzSqlDatabaseSensitivityClassification', 
               'Get-AzSqlInstanceDatabaseSensitivityClassification', 
               'Set-AzSqlDatabaseSensitivityClassification', 
               'Set-AzSqlInstanceDatabaseSensitivityClassification', 
               'Remove-AzSqlDatabaseSensitivityClassification', 
               'Remove-AzSqlInstanceDatabaseSensitivityClassification', 
               'Get-AzSqlDatabaseSensitivityRecommendation', 
               'Get-AzSqlInstanceDatabaseSensitivityRecommendation', 
               'Get-AzSqlVirtualCluster', 'Remove-AzSqlVirtualCluster', 
               'Enable-AzSqlServerAdvancedDataSecurity', 
               'Disable-AzSqlServerAdvancedDataSecurity', 
               'Get-AzSqlServerAdvancedDataSecurityPolicy', 
               'Get-AzSqlDatabaseInstanceFailoverGroup', 
               'New-AzSqlDatabaseInstanceFailoverGroup', 
               'Remove-AzSqlDatabaseInstanceFailoverGroup', 
               'Set-AzSqlDatabaseInstanceFailoverGroup', 
               'Switch-AzSqlDatabaseInstanceFailoverGroup', 
               'Add-AzSqlInstanceKeyVaultKey', 'Get-AzSqlInstanceKeyVaultKey', 
               'Remove-AzSqlInstanceKeyVaultKey', 
               'Get-AzSqlInstanceTransparentDataEncryptionProtector', 
               'Set-AzSqlInstanceTransparentDataEncryptionProtector', 
               'Get-AzSqlServerAudit', 'Get-AzSqlDatabaseAudit', 
               'Set-AzSqlServerAudit', 'Set-AzSqlDatabaseAudit', 
               'Get-AzSqlServerMSSupportAudit', 'Set-AzSqlServerMSSupportAudit', 
               'Remove-AzSqlServerMSSupportAudit', 
               'Get-AzSqlInstanceActiveDirectoryAdministrator', 
               'Remove-AzSqlInstanceActiveDirectoryAdministrator', 
               'Set-AzSqlInstanceActiveDirectoryAdministrator', 
               'Remove-AzSqlServerAudit', 'Remove-AzSqlDatabaseAudit', 
               'Get-AzSqlInstancePool', 'Set-AzSqlInstancePool', 
               'New-AzSqlInstancePool', 'Remove-AzSqlInstancePool', 
               'Get-AzSqlInstancePoolUsage', 'Invoke-AzSqlDatabaseFailover', 
               'Invoke-AzSqlElasticPoolFailover', 'New-AzSqlElasticJobAgent', 
               'Remove-AzSqlElasticJobAgent', 'Get-AzSqlElasticJobAgent', 
               'Set-AzSqlElasticJobAgent', 'New-AzSqlElasticJobCredential', 
               'Get-AzSqlElasticJobCredential', 'Set-AzSqlElasticJobCredential', 
               'Remove-AzSqlElasticJobCredential', 
               'New-AzSqlElasticJobTargetGroup', 'Get-AzSqlElasticJobTargetGroup', 
               'Remove-AzSqlElasticJobTargetGroup', 'Add-AzSqlElasticJobTarget', 
               'Remove-AzSqlElasticJobTarget', 'New-AzSqlElasticJob', 
               'Get-AzSqlElasticJob', 'Set-AzSqlElasticJob', 
               'Remove-AzSqlElasticJob', 'Add-AzSqlElasticJobStep', 
               'Get-AzSqlElasticJobStep', 'Remove-AzSqlElasticJobStep', 
               'Set-AzSqlElasticJobStep', 'Start-AzSqlElasticJob', 
               'Stop-AzSqlElasticJob', 'Get-AzSqlElasticJobExecution', 
               'Get-AzSqlElasticJobStepExecution', 
               'Get-AzSqlElasticJobTargetExecution', 
               'Enable-AzSqlDatabaseSensitivityRecommendation', 
               'Disable-AzSqlDatabaseSensitivityRecommendation', 
               'Enable-AzSqlInstanceDatabaseSensitivityRecommendation', 
               'Disable-AzSqlInstanceDatabaseSensitivityRecommendation', 
               'Get-AzSqlInstanceDatabaseLongTermRetentionBackup', 
               'Remove-AzSqlInstanceDatabaseLongTermRetentionBackup', 
               'Get-AzSqlInstanceDatabaseBackupLongTermRetentionPolicy', 
               'Set-AzSqlInstanceDatabaseBackupLongTermRetentionPolicy', 
               'Disable-AzSqlServerActiveDirectoryOnlyAuthentication', 
               'Invoke-AzSqlInstanceFailover', 
               'Enable-AzSqlServerActiveDirectoryOnlyAuthentication', 
               'Get-AzSqlServerActiveDirectoryOnlyAuthentication', 
               'Start-AzSqlInstanceDatabaseLogReplay', 
               'Complete-AzSqlInstanceDatabaseLogReplay', 
               'Stop-AzSqlInstanceDatabaseLogReplay', 
               'Get-AzSqlInstanceDatabaseLogReplay', 
               'Disable-AzSqlInstanceActiveDirectoryOnlyAuthentication', 
               'Enable-AzSqlInstanceActiveDirectoryOnlyAuthentication', 
               'Get-AzSqlInstanceActiveDirectoryOnlyAuthentication', 
               'Get-AzSqlServerTrustGroup', 'New-AzSqlServerTrustGroup', 
               'Remove-AzSqlServerTrustGroup', 
               'Enable-AzSqlDatabaseLedgerDigestUpload', 
               'Disable-AzSqlDatabaseLedgerDigestUpload', 
               'Get-AzSqlDatabaseLedgerDigestUpload', 
               'New-AzSqlInstanceServerTrustCertificate', 
               'Get-AzSqlInstanceServerTrustCertificate', 
               'Remove-AzSqlInstanceServerTrustCertificate', 
               'New-AzSqlInstanceLink', 'Get-AzSqlInstanceLink', 
               'Remove-AzSqlInstanceLink', 'Update-AzSqlInstanceLink', 
               'Get-AzSqlInstanceEndpointCertificate', 'Set-AzSqlInstanceDatabase', 
               'Get-AzSqlDatabaseAdvancedThreatProtectionSetting', 
               'Get-AzSqlServerAdvancedThreatProtectionSetting', 
               'Get-AzSqlInstanceDatabaseAdvancedThreatProtectionSetting', 
               'Get-AzSqlInstanceAdvancedThreatProtectionSetting', 
               'Update-AzSqlDatabaseAdvancedThreatProtectionSetting', 
               'Update-AzSqlServerAdvancedThreatProtectionSetting', 
               'Update-AzSqlInstanceDatabaseAdvancedThreatProtectionSetting', 
               'Update-AzSqlInstanceAdvancedThreatProtectionSetting'

# Variables to export from this module
# VariablesToExport = @()

# Aliases to export from this module, for best performance, do not use wildcards and do not delete the entry, use an empty array if there are no aliases to export.
AliasesToExport = 'Get-AzSqlDatabaseServerAuditingPolicy', 
               'Remove-AzSqlDatabaseServerAuditing', 
               'Set-AzSqlDatabaseServerAuditingPolicy', 
               'Use-AzSqlDatabaseServerAuditingPolicy', 
               'Get-AzSqlDatabaseLongTermRetentionPolicy', 
               'Set-AzSqlDatabaseLongTermRetentionPolicy', 
               'Update-AzSqlDatabaseVulnerabilityAssessmentSetting', 
               'Get-AzSqlDatabaseVulnerabilityAssessmentSetting', 
               'Clear-AzSqlDatabaseVulnerabilityAssessmentSetting', 
               'Update-AzSqlInstanceDatabaseVulnerabilityAssessmentSetting', 
               'Get-AzSqlInstanceDatabaseVulnerabilityAssessmentSetting', 
               'Clear-AzSqlInstanceDatabaseVulnerabilityAssessmentSetting', 
               'Set-AzSqlInstanceTDEProtector', 'Get-AzSqlInstanceTDEProtector', 
               'Set-AzSqlServerTrustGroup', 'Set-AzSqlInstanceLink'

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
        Tags = 'Azure','ResourceManager','ARM','Sql','Database'

        # A URL to the license for this module.
        LicenseUri = 'https://aka.ms/azps-license'

        # A URL to the main website for this project.
        ProjectUri = 'https://github.com/Azure/azure-powershell'

        # A URL to an icon representing this module.
        # IconUri = ''

        # ReleaseNotes of this module
        ReleaseNotes = '* Added new cmdlets for CRUD operations on SQL server IPv6 Firewall rules
      ''Get-AzSqlServerIpv6FirewallRule''
      ''New-AzSqlServerIpv6FirewallRule''
      ''Remove-AzSqlServerIpv6FirewallRule''
      ''Set-AzSqlServerIpv6FirewallRule''
* StorageContainerSasToken parameter in the ''Start-AzSqlInstanceDatabaseLogReplay'' cmdlet is now optional'

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
# MIInygYJKoZIhvcNAQcCoIInuzCCJ7cCAQExDzANBglghkgBZQMEAgEFADB5Bgor
# BgEEAYI3AgEEoGswaTA0BgorBgEEAYI3AgEeMCYCAwEAAAQQH8w7YFlLCE63JNLG
# KX7zUQIBAAIBAAIBAAIBAAIBADAxMA0GCWCGSAFlAwQCAQUABCBHCrHp8n1aDvVe
# Eq58PorHf26dFqRkg6lWtswPAGsDxqCCDYEwggX/MIID56ADAgECAhMzAAACzI61
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
# RcBCyZt2WwqASGv9eZ/BvW1taslScxMNelDNMYIZnzCCGZsCAQEwgZUwfjELMAkG
# A1UEBhMCVVMxEzARBgNVBAgTCldhc2hpbmd0b24xEDAOBgNVBAcTB1JlZG1vbmQx
# HjAcBgNVBAoTFU1pY3Jvc29mdCBDb3Jwb3JhdGlvbjEoMCYGA1UEAxMfTWljcm9z
# b2Z0IENvZGUgU2lnbmluZyBQQ0EgMjAxMQITMwAAAsyOtZamvdHJTgAAAAACzDAN
# BglghkgBZQMEAgEFAKCBrjAZBgkqhkiG9w0BCQMxDAYKKwYBBAGCNwIBBDAcBgor
# BgEEAYI3AgELMQ4wDAYKKwYBBAGCNwIBFTAvBgkqhkiG9w0BCQQxIgQgl+5+ibHS
# zaboLctmx/L7NGSnxg1W1zdOEoDYmoBRv48wQgYKKwYBBAGCNwIBDDE0MDKgFIAS
# AE0AaQBjAHIAbwBzAG8AZgB0oRqAGGh0dHA6Ly93d3cubWljcm9zb2Z0LmNvbTAN
# BgkqhkiG9w0BAQEFAASCAQCfpXm9mk3fV36CEXXWeSJGT+r83sC/QhOl0wTNZXEE
# titHsgxCZiLteDhNqMhtjrriYt7cXM3kfWLOO6wUCs5/BGjNM3NeATWFqYHTobeD
# 85XJr6nBvSiyXUAEXXysg1YV+4ZsaCDJOeiPKtL2fVPs32YhqvciafTMmWycNdH5
# jvz29WdTjpcaUyfLcudROMAOgO/FAFbl1z8m4O0DMZ/YfHAwWyT21Dwx9dc3RELO
# 1f7mhfblRu39M5pUYPz9LHbv1X1oyksuCzLbwP9zounJti2W5Sv6IMjh1w0shAjt
# KSTQdZEowjTUfhAFD9O5Q5m5xDHeXxGvmcNvBXJQ4dunoYIXKTCCFyUGCisGAQQB
# gjcDAwExghcVMIIXEQYJKoZIhvcNAQcCoIIXAjCCFv4CAQMxDzANBglghkgBZQME
# AgEFADCCAVkGCyqGSIb3DQEJEAEEoIIBSASCAUQwggFAAgEBBgorBgEEAYRZCgMB
# MDEwDQYJYIZIAWUDBAIBBQAEIH+geYlAyvn1fADwmB10SQAkzVfj9v521vBVWsPA
# d4nzAgZjT9fxWzUYEzIwMjIxMDI4MDgxMTA0LjY2M1owBIACAfSggdikgdUwgdIx
# CzAJBgNVBAYTAlVTMRMwEQYDVQQIEwpXYXNoaW5ndG9uMRAwDgYDVQQHEwdSZWRt
# b25kMR4wHAYDVQQKExVNaWNyb3NvZnQgQ29ycG9yYXRpb24xLTArBgNVBAsTJE1p
# Y3Jvc29mdCBJcmVsYW5kIE9wZXJhdGlvbnMgTGltaXRlZDEmMCQGA1UECxMdVGhh
# bGVzIFRTUyBFU046MkFENC00QjkyLUZBMDExJTAjBgNVBAMTHE1pY3Jvc29mdCBU
# aW1lLVN0YW1wIFNlcnZpY2WgghF4MIIHJzCCBQ+gAwIBAgITMwAAAbHKkEPuC/AD
# qwABAAABsTANBgkqhkiG9w0BAQsFADB8MQswCQYDVQQGEwJVUzETMBEGA1UECBMK
# V2FzaGluZ3RvbjEQMA4GA1UEBxMHUmVkbW9uZDEeMBwGA1UEChMVTWljcm9zb2Z0
# IENvcnBvcmF0aW9uMSYwJAYDVQQDEx1NaWNyb3NvZnQgVGltZS1TdGFtcCBQQ0Eg
# MjAxMDAeFw0yMjA5MjAyMDIxNTlaFw0yMzEyMTQyMDIxNTlaMIHSMQswCQYDVQQG
# EwJVUzETMBEGA1UECBMKV2FzaGluZ3RvbjEQMA4GA1UEBxMHUmVkbW9uZDEeMBwG
# A1UEChMVTWljcm9zb2Z0IENvcnBvcmF0aW9uMS0wKwYDVQQLEyRNaWNyb3NvZnQg
# SXJlbGFuZCBPcGVyYXRpb25zIExpbWl0ZWQxJjAkBgNVBAsTHVRoYWxlcyBUU1Mg
# RVNOOjJBRDQtNEI5Mi1GQTAxMSUwIwYDVQQDExxNaWNyb3NvZnQgVGltZS1TdGFt
# cCBTZXJ2aWNlMIICIjANBgkqhkiG9w0BAQEFAAOCAg8AMIICCgKCAgEAhqKrPtXs
# G8fsg4w8R4MzZTAKkzwvEBQ94ntS+72rRGIMF0GCyEL9IOt7f9gkGoamfbtrtdY4
# y+KIFR8w19/nU3EoWhJfrYamrfpgtFmTaE3XCKCsI7rnrPmlVOMmndDyN1gAlfeu
# 4l5rdxx9ODECBPdS/+w/jDT7JkBhrYllqVXcwGAgWLdXAoUDgKVByv5XhKkbOrPx
# 9qppuZjKm4nflmfwb/bTWkA3aMMQ67tBoMLSsbIN3BJNWZdwczjoQVXo3YXr2fB+
# PYNmHviCcDUMHs0Vxmf7i/WSpBafsDMEn6WY7G8qtRGVX+7X0zDVg/7NVDLMqfn/
# iv++5hJGP+2Fmv4WZkBS1MBpwvOi4EQ25pIG45jWTffR4ynyed1I1SxSOP+efuBx
# 0WrN1A250lv5fGZHCL0vCMDT/w+U6wpNnxfDoQRY9Ut82iNK5alkxNozPP/DNI+n
# knTaSliaR2XnSXDIZEs7lfuJYg0qahfJJ1CZF2IYxOS9FK1crEigSb8QnEJoj6Th
# Lf4FYpYLTsRXlPdQbvBsVvgt++BttooznwfK0DKMOc718SLS+unwkVO0aF23CEQS
# Stoy0ZW34K+cbRmUfia+k9E+4luoTnT17oKqYfDNO5Rk8UwVa8mfh8+/R3fZaz2O
# /ZhiYT/RZHV9Quz5PHGlaCfXPQ8A6zFJlE8CAwEAAaOCAUkwggFFMB0GA1UdDgQW
# BBT0m2eR7w2thIr18WehUTSmvQ45kzAfBgNVHSMEGDAWgBSfpxVdAF5iXYP05dJl
# pxtTNRnpcjBfBgNVHR8EWDBWMFSgUqBQhk5odHRwOi8vd3d3Lm1pY3Jvc29mdC5j
# b20vcGtpb3BzL2NybC9NaWNyb3NvZnQlMjBUaW1lLVN0YW1wJTIwUENBJTIwMjAx
# MCgxKS5jcmwwbAYIKwYBBQUHAQEEYDBeMFwGCCsGAQUFBzAChlBodHRwOi8vd3d3
# Lm1pY3Jvc29mdC5jb20vcGtpb3BzL2NlcnRzL01pY3Jvc29mdCUyMFRpbWUtU3Rh
# bXAlMjBQQ0ElMjAyMDEwKDEpLmNydDAMBgNVHRMBAf8EAjAAMBYGA1UdJQEB/wQM
# MAoGCCsGAQUFBwMIMA4GA1UdDwEB/wQEAwIHgDANBgkqhkiG9w0BAQsFAAOCAgEA
# 2Oc3kmql5VKEitAhoBCc1U6/VwMSYKQPqhC59f00Y5fbwnD+B2Qa0wnJqADSVVu6
# bBCVrks+EGbkuMhRb/lpiHNKVnuXF4PKTDnvCnYCqgwAmbttdxe0m38fJpGU3fmE
# CEFX4OYacEhFwTkLZtIUVjdqwPnQpRII+YqX/Q0Vp096g2puPllSdrxUB8xIOx3F
# 7LGOzyv/1WmrLyWAhUGpGte0W3qfX4YWkn7YCM+yl887tj5j+jO/l1MRi6bl4MsN
# 0PW2FCYeRbyzQEENsg5Pd351Z08ROR/nR8z+cAuQwR29ijaDKIms5IbRr1nZL/qZ
# skFSuCuSA+nYeMuTJxHg2HCXrt6ECFbEkYoPaBGTzxPYopcuJEcChhNlWkduCRgu
# ykEsmz0LvtmS7Fe68g4Zoh3sQkIE5VEwnKC3HwVemhK7eNYR1q7RYExfGFUDMQdO
# 7tQpbcPD4oaBbtFGWGu3nz1IryWs9K88zo8+eoQV/o9SxNU7Rs6TMqcLdM6C6Lgm
# GVaWKKC0S2DVKU8zFx0y5z25h1ZJ7X/Zhaav1mtXVG6+lJIq8ktJgOU5/pomumdf
# tgosxGjIp3NORy9fDUll+KQl4YmN9GzZxPYkhuI0QYriLmytBtUK+AK91hURVldV
# bUjP8sksr1dsiQwyOYQIkSxrTuhp0pw7h5329jphgEYwggdxMIIFWaADAgECAhMz
# AAAAFcXna54Cm0mZAAAAAAAVMA0GCSqGSIb3DQEBCwUAMIGIMQswCQYDVQQGEwJV
# UzETMBEGA1UECBMKV2FzaGluZ3RvbjEQMA4GA1UEBxMHUmVkbW9uZDEeMBwGA1UE
# ChMVTWljcm9zb2Z0IENvcnBvcmF0aW9uMTIwMAYDVQQDEylNaWNyb3NvZnQgUm9v
# dCBDZXJ0aWZpY2F0ZSBBdXRob3JpdHkgMjAxMDAeFw0yMTA5MzAxODIyMjVaFw0z
# MDA5MzAxODMyMjVaMHwxCzAJBgNVBAYTAlVTMRMwEQYDVQQIEwpXYXNoaW5ndG9u
# MRAwDgYDVQQHEwdSZWRtb25kMR4wHAYDVQQKExVNaWNyb3NvZnQgQ29ycG9yYXRp
# b24xJjAkBgNVBAMTHU1pY3Jvc29mdCBUaW1lLVN0YW1wIFBDQSAyMDEwMIICIjAN
# BgkqhkiG9w0BAQEFAAOCAg8AMIICCgKCAgEA5OGmTOe0ciELeaLL1yR5vQ7VgtP9
# 7pwHB9KpbE51yMo1V/YBf2xK4OK9uT4XYDP/XE/HZveVU3Fa4n5KWv64NmeFRiMM
# tY0Tz3cywBAY6GB9alKDRLemjkZrBxTzxXb1hlDcwUTIcVxRMTegCjhuje3XD9gm
# U3w5YQJ6xKr9cmmvHaus9ja+NSZk2pg7uhp7M62AW36MEBydUv626GIl3GoPz130
# /o5Tz9bshVZN7928jaTjkY+yOSxRnOlwaQ3KNi1wjjHINSi947SHJMPgyY9+tVSP
# 3PoFVZhtaDuaRr3tpK56KTesy+uDRedGbsoy1cCGMFxPLOJiss254o2I5JasAUq7
# vnGpF1tnYN74kpEeHT39IM9zfUGaRnXNxF803RKJ1v2lIH1+/NmeRd+2ci/bfV+A
# utuqfjbsNkz2K26oElHovwUDo9Fzpk03dJQcNIIP8BDyt0cY7afomXw/TNuvXsLz
# 1dhzPUNOwTM5TI4CvEJoLhDqhFFG4tG9ahhaYQFzymeiXtcodgLiMxhy16cg8ML6
# EgrXY28MyTZki1ugpoMhXV8wdJGUlNi5UPkLiWHzNgY1GIRH29wb0f2y1BzFa/Zc
# UlFdEtsluq9QBXpsxREdcu+N+VLEhReTwDwV2xo3xwgVGD94q0W29R6HXtqPnhZy
# acaue7e3PmriLq0CAwEAAaOCAd0wggHZMBIGCSsGAQQBgjcVAQQFAgMBAAEwIwYJ
# KwYBBAGCNxUCBBYEFCqnUv5kxJq+gpE8RjUpzxD/LwTuMB0GA1UdDgQWBBSfpxVd
# AF5iXYP05dJlpxtTNRnpcjBcBgNVHSAEVTBTMFEGDCsGAQQBgjdMg30BATBBMD8G
# CCsGAQUFBwIBFjNodHRwOi8vd3d3Lm1pY3Jvc29mdC5jb20vcGtpb3BzL0RvY3Mv
# UmVwb3NpdG9yeS5odG0wEwYDVR0lBAwwCgYIKwYBBQUHAwgwGQYJKwYBBAGCNxQC
# BAweCgBTAHUAYgBDAEEwCwYDVR0PBAQDAgGGMA8GA1UdEwEB/wQFMAMBAf8wHwYD
# VR0jBBgwFoAU1fZWy4/oolxiaNE9lJBb186aGMQwVgYDVR0fBE8wTTBLoEmgR4ZF
# aHR0cDovL2NybC5taWNyb3NvZnQuY29tL3BraS9jcmwvcHJvZHVjdHMvTWljUm9v
# Q2VyQXV0XzIwMTAtMDYtMjMuY3JsMFoGCCsGAQUFBwEBBE4wTDBKBggrBgEFBQcw
# AoY+aHR0cDovL3d3dy5taWNyb3NvZnQuY29tL3BraS9jZXJ0cy9NaWNSb29DZXJB
# dXRfMjAxMC0wNi0yMy5jcnQwDQYJKoZIhvcNAQELBQADggIBAJ1VffwqreEsH2cB
# MSRb4Z5yS/ypb+pcFLY+TkdkeLEGk5c9MTO1OdfCcTY/2mRsfNB1OW27DzHkwo/7
# bNGhlBgi7ulmZzpTTd2YurYeeNg2LpypglYAA7AFvonoaeC6Ce5732pvvinLbtg/
# SHUB2RjebYIM9W0jVOR4U3UkV7ndn/OOPcbzaN9l9qRWqveVtihVJ9AkvUCgvxm2
# EhIRXT0n4ECWOKz3+SmJw7wXsFSFQrP8DJ6LGYnn8AtqgcKBGUIZUnWKNsIdw2Fz
# Lixre24/LAl4FOmRsqlb30mjdAy87JGA0j3mSj5mO0+7hvoyGtmW9I/2kQH2zsZ0
# /fZMcm8Qq3UwxTSwethQ/gpY3UA8x1RtnWN0SCyxTkctwRQEcb9k+SS+c23Kjgm9
# swFXSVRk2XPXfx5bRAGOWhmRaw2fpCjcZxkoJLo4S5pu+yFUa2pFEUep8beuyOiJ
# Xk+d0tBMdrVXVAmxaQFEfnyhYWxz/gq77EFmPWn9y8FBSX5+k77L+DvktxW/tM4+
# pTFRhLy/AsGConsXHRWJjXD+57XQKBqJC4822rpM+Zv/Cuk0+CQ1ZyvgDbjmjJnW
# 4SLq8CdCPSWU5nR0W2rRnj7tfqAxM328y+l7vzhwRNGQ8cirOoo6CGJ/2XBjU02N
# 7oJtpQUQwXEGahC0HVUzWLOhcGbyoYIC1DCCAj0CAQEwggEAoYHYpIHVMIHSMQsw
# CQYDVQQGEwJVUzETMBEGA1UECBMKV2FzaGluZ3RvbjEQMA4GA1UEBxMHUmVkbW9u
# ZDEeMBwGA1UEChMVTWljcm9zb2Z0IENvcnBvcmF0aW9uMS0wKwYDVQQLEyRNaWNy
# b3NvZnQgSXJlbGFuZCBPcGVyYXRpb25zIExpbWl0ZWQxJjAkBgNVBAsTHVRoYWxl
# cyBUU1MgRVNOOjJBRDQtNEI5Mi1GQTAxMSUwIwYDVQQDExxNaWNyb3NvZnQgVGlt
# ZS1TdGFtcCBTZXJ2aWNloiMKAQEwBwYFKw4DAhoDFQDtZLG+pANsDu/LLr1OfTA/
# kEbHK6CBgzCBgKR+MHwxCzAJBgNVBAYTAlVTMRMwEQYDVQQIEwpXYXNoaW5ndG9u
# MRAwDgYDVQQHEwdSZWRtb25kMR4wHAYDVQQKExVNaWNyb3NvZnQgQ29ycG9yYXRp
# b24xJjAkBgNVBAMTHU1pY3Jvc29mdCBUaW1lLVN0YW1wIFBDQSAyMDEwMA0GCSqG
# SIb3DQEBBQUAAgUA5wWK5jAiGA8yMDIyMTAyODA2NTUzNFoYDzIwMjIxMDI5MDY1
# NTM0WjB0MDoGCisGAQQBhFkKBAExLDAqMAoCBQDnBYrmAgEAMAcCAQACAg9YMAcC
# AQACAhOaMAoCBQDnBtxmAgEAMDYGCisGAQQBhFkKBAIxKDAmMAwGCisGAQQBhFkK
# AwKgCjAIAgEAAgMHoSChCjAIAgEAAgMBhqAwDQYJKoZIhvcNAQEFBQADgYEAA+Zd
# v0ylb5yt8KL8H8u1zpVxLjP68Mty7JmSLKbvjSypdFLa2LhQZudxVGkD/PzBwpiM
# W8HFo0bL03IPORA3cGJx/a5IfjB46/Lxw6mFKpSk9zb/qv+f+awYtBFJ6hJnlgfh
# HaNHxnDavExUcXaERvJ9gwjTpyMtFbKXHdgTbW4xggQNMIIECQIBATCBkzB8MQsw
# CQYDVQQGEwJVUzETMBEGA1UECBMKV2FzaGluZ3RvbjEQMA4GA1UEBxMHUmVkbW9u
# ZDEeMBwGA1UEChMVTWljcm9zb2Z0IENvcnBvcmF0aW9uMSYwJAYDVQQDEx1NaWNy
# b3NvZnQgVGltZS1TdGFtcCBQQ0EgMjAxMAITMwAAAbHKkEPuC/ADqwABAAABsTAN
# BglghkgBZQMEAgEFAKCCAUowGgYJKoZIhvcNAQkDMQ0GCyqGSIb3DQEJEAEEMC8G
# CSqGSIb3DQEJBDEiBCCKh7jd6T+yZhlw9dJIa0lV4oB8GbpnlnVdRJgZS3NBaTCB
# +gYLKoZIhvcNAQkQAi8xgeowgecwgeQwgb0EIIPtDYsUW9+p4OjL2Cm7fm3p1h6u
# sM7RwxOU4iibNM9sMIGYMIGApH4wfDELMAkGA1UEBhMCVVMxEzARBgNVBAgTCldh
# c2hpbmd0b24xEDAOBgNVBAcTB1JlZG1vbmQxHjAcBgNVBAoTFU1pY3Jvc29mdCBD
# b3Jwb3JhdGlvbjEmMCQGA1UEAxMdTWljcm9zb2Z0IFRpbWUtU3RhbXAgUENBIDIw
# MTACEzMAAAGxypBD7gvwA6sAAQAAAbEwIgQgXgngg+/EbIkiywoYmBGdpe/LBbYd
# GMgu2mRFf7V0ZkgwDQYJKoZIhvcNAQELBQAEggIAH80qa3TXwaDzB8mM3C7xgCin
# tm9ExL/Ban5A8LenccQt6Yh9fe/8emhMdUlTygq6Mqt3RQFYhauNw7zRcEg4Pkzb
# r7SHDGQHjUn8WrDHMbrlHd3JFB1ipsXOxr14mV8Kb1Ot2sdXhQMK1gTicVKwS6sx
# Bz0mi61jeAYFyFYHsBkRKhlBivjaHDhULV79gnrhtx3NYGGy4/8sT7X4JdZGA6Im
# H+ZMRYd/2yD0ulDtKeMw0LxFAwImHDpS+1ZrGSsrtw7i3y3KJRAsbIfI5e1W9aGL
# gGDs8XMYMzXTIAlHzfvXPQhX174Hdj8luKc0vkbOkJ3I0krh/mh41dd5Nxzm+oMr
# ldmuM/Ddae1BngFEy1PCCHirMtAGHCjV+Vyd+wF/AJkJnQ0IYtd9lQuWImIgytIL
# 0Ycgq0OJbXlfjGenmUObRoYA41AUgL97Jn1Ei8ruq3FaggwWEpmbV6inRf9Dwfyy
# FWExNqWEsQ62HvkVSDYcgcpkGrW/hRGIFN0EaYBvdm5DtNVsZGcTtbTKT1oryFzK
# D5m+P6BzcWbOSUElRSMVJ8blZRN7LMXnuWlDhWoWAUdE8BkZskIFOU5NDzRkSBS7
# D8HsPiEyurIjDPLQcEhl2amRzz8B0U0Khg4Md5h959hGT+Z0I5kZN1siSYGU82F1
# K8AkjucWnqdxvfwfujQ=
# SIG # End signature block