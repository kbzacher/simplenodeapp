function Initialize-AzDataProtectionRestoreRequest
{
	[OutputType('Microsoft.Azure.PowerShell.Cmdlets.DataProtection.Models.Api20220501.IAzureBackupRestoreRequest')]
    [CmdletBinding(PositionalBinding=$false)]
    [Microsoft.Azure.PowerShell.Cmdlets.DataProtection.Description('Initializes Restore Request object for triggering restore on a protected backup instance.')]

    param(
        [Parameter(ParameterSetName="OriginalLocationFullRecovery", Mandatory, HelpMessage='Datasource Type')]
        [Parameter(ParameterSetName="AlternateLocationFullRecovery", Mandatory, HelpMessage='Datasource Type')]
        [Parameter(ParameterSetName="OriginalLocationILR", Mandatory, HelpMessage='Datasource Type')]
        [Parameter(ParameterSetName="RestoreAsFiles", Mandatory, HelpMessage='Datasource Type')]
        # [Parameter(ParameterSetName="AlternateLocationILR", Mandatory, HelpMessage='Datasource Type')]
        [Microsoft.Azure.PowerShell.Cmdlets.DataProtection.Support.DatasourceTypes]
        ${DatasourceType},

        [Parameter(ParameterSetName="OriginalLocationFullRecovery", Mandatory, HelpMessage='DataStore Type of the Recovery point')]
        [Parameter(ParameterSetName="AlternateLocationFullRecovery", Mandatory, HelpMessage='DataStore Type of the Recovery point')]
        [Parameter(ParameterSetName="OriginalLocationILR", Mandatory, HelpMessage='DataStore Type of the Recovery point')]
        [Parameter(ParameterSetName="RestoreAsFiles", Mandatory, HelpMessage='DataStore Type of the Recovery point')]
        # [Parameter(ParameterSetName="AlternateLocationILR", Mandatory, HelpMessage='DataStore Type of the Recovery point')]
        [Microsoft.Azure.PowerShell.Cmdlets.DataProtection.Support.DataStoreType]
        ${SourceDataStore},

        [Parameter(ParameterSetName="OriginalLocationFullRecovery", Mandatory=$false, HelpMessage='Id of the recovery point to be restored.')]
        [Parameter(ParameterSetName="AlternateLocationFullRecovery", Mandatory=$false, HelpMessage='Id of the recovery point to be restored.')]
        [Parameter(ParameterSetName="OriginalLocationILR", Mandatory=$false, HelpMessage='Id of the recovery point to be restored.')]
        [Parameter(ParameterSetName="RestoreAsFiles", Mandatory=$false, HelpMessage='Id of the recovery point to be restored.')]
        # [Parameter(ParameterSetName="AlternateLocationILR", Mandatory=$false, HelpMessage='Id of the recovery point to be restored.')]
        [System.String]
        ${RecoveryPoint},
        
        [Parameter(ParameterSetName="OriginalLocationFullRecovery", Mandatory=$false, HelpMessage='Point In Time for restore.')]
        [Parameter(ParameterSetName="AlternateLocationFullRecovery", Mandatory=$false, HelpMessage='Point In Time for restore.')]
        [Parameter(ParameterSetName="OriginalLocationILR", Mandatory=$false, HelpMessage='Point In Time for restore.')]
        # [Parameter(ParameterSetName="AlternateLocationILR", Mandatory=$false, HelpMessage='Point In Time for restore.')]
        [System.DateTime]
        ${PointInTime},

        [Parameter(ParameterSetName="OriginalLocationFullRecovery", Mandatory=$false, HelpMessage='Rehydration duration for the archived recovery point to stay rehydrated, default value for rehydration duration is 15.')]
        [Parameter(ParameterSetName="AlternateLocationFullRecovery", Mandatory=$false, HelpMessage='Rehydration duration for the archived recovery point to stay rehydrated, default value for rehydration duration is 15.')]
        [Parameter(ParameterSetName="OriginalLocationILR", Mandatory=$false, HelpMessage='Rehydration duration for the archived recovery point to stay rehydrated, default value for rehydration duration is 15.')]
        [Parameter(ParameterSetName="RestoreAsFiles", Mandatory=$false, HelpMessage='Rehydration duration for the archived recovery point to stay rehydrated, default value for rehydration duration is 15.')]
        # [Parameter(ParameterSetName="AlternateLocationILR", Mandatory=$false, HelpMessage='Rehydration duration for the archived recovery point to stay rehydrated, default value for rehydration duration is 15.')]
        [System.String]
        ${RehydrationDuration},

        [Parameter(ParameterSetName="OriginalLocationFullRecovery", Mandatory=$false, HelpMessage='Rehydration priority for archived recovery point. This parameter is mandatory for rehydrate restore of archived points.')]
        [Parameter(ParameterSetName="AlternateLocationFullRecovery", Mandatory=$false, HelpMessage='Rehydration priority for archived recovery point. This parameter is mandatory for rehydrate restore of archived points.')]
        [Parameter(ParameterSetName="OriginalLocationILR", Mandatory=$false, HelpMessage='Rehydration priority for archived recovery point. This parameter is mandatory for rehydrate restore of archived points.')]
        [Parameter(ParameterSetName="RestoreAsFiles", Mandatory=$false, HelpMessage='Rehydration priority for archived recovery point. This parameter is mandatory for rehydrate restore of archived points.')]
        # [Parameter(ParameterSetName="AlternateLocationILR", Mandatory=$false, HelpMessage='Rehydration priority for archived recovery point. This parameter is mandatory for rehydrate restore of archived points.')]
        [ValidateSet("Standard")]
        [System.String]
        ${RehydrationPriority},

        [Parameter(ParameterSetName="OriginalLocationFullRecovery", Mandatory, HelpMessage='Target Restore Location')]
        [Parameter(ParameterSetName="AlternateLocationFullRecovery", Mandatory, HelpMessage='Target Restore Location')]
        [Parameter(ParameterSetName="OriginalLocationILR", Mandatory, HelpMessage='Target Restore Location')]
        [Parameter(ParameterSetName="RestoreAsFiles", Mandatory, HelpMessage='Target Restore Location')]
        # [Parameter(ParameterSetName="AlternateLocationILR", Mandatory, HelpMessage='Target Restore Location')]
        [System.String]
        ${RestoreLocation},

        [Parameter(ParameterSetName="OriginalLocationFullRecovery", Mandatory, HelpMessage='Restore Target Type')]
        [Parameter(ParameterSetName="AlternateLocationFullRecovery", Mandatory, HelpMessage='Restore Target Type')]
        [Parameter(ParameterSetName="OriginalLocationILR", Mandatory, HelpMessage='Restore Target Type')]
        [Parameter(ParameterSetName="RestoreAsFiles", Mandatory, HelpMessage='Restore Target Type')]
        # [Parameter(ParameterSetName="AlternateLocationILR", Mandatory, HelpMessage='Restore Target Type')]
        [Microsoft.Azure.PowerShell.Cmdlets.DataProtection.Support.RestoreTargetType]
        ${RestoreType},     

        [Parameter(ParameterSetName="OriginalLocationFullRecovery", Mandatory, HelpMessage='Backup Instance object to trigger original localtion restore.')]
        [Parameter(ParameterSetName="OriginalLocationILR", Mandatory, HelpMessage='Backup Instance object to trigger original localtion restore.')]
        [Microsoft.Azure.PowerShell.Cmdlets.DataProtection.Models.Api20220501.BackupInstanceResource]
        ${BackupInstance},

        [Parameter(ParameterSetName="AlternateLocationFullRecovery", Mandatory, HelpMessage='Target resource Id to which backup data will be restored.')]
        # [Parameter(ParameterSetName="AlternateLocationILR", Mandatory, HelpMessage='Target resource Id to which backup data will be restored.')]
        [System.String]
        ${TargetResourceId},

        [Parameter(ParameterSetName="RestoreAsFiles", Mandatory, HelpMessage='Target storage account container Id to which backup data will be restored as files.')]
        [System.String]
        ${TargetContainerURI},

        [Parameter(ParameterSetName="RestoreAsFiles", Mandatory, HelpMessage='File name to be prefixed to the restored backup data.')]
        [System.String]
        ${FileNamePrefix},

        [Parameter(ParameterSetName="OriginalLocationILR", Mandatory, HelpMessage='Switch Parameter to enable item level recovery.')]
        # [Parameter(ParameterSetName="AlternateLocationILR", Mandatory, HelpMessage='Switch parameter to enable item level recovery.')]
        [Switch]
        ${ItemLevelRecovery},

        [Parameter(ParameterSetName="OriginalLocationILR", Mandatory=$false, HelpMessage='Container names for Item Level Recovery.')]
        # [Parameter(ParameterSetName="AlternateLocationILR", Mandatory=$false, HelpMessage='Container names for Item Level Recovery.')]
        [System.String[]]
        ${ContainersList},

        [Parameter(ParameterSetName="OriginalLocationILR", Mandatory=$false, HelpMessage='Minimum matching value for Item Level Recovery.')]
        # [Parameter(ParameterSetName="AlternateLocationILR", Mandatory=$false, HelpMessage='Minimum matching value for Item Level Recovery.')]
        [System.String[]]
        ${FromPrefixPattern},

        [Parameter(ParameterSetName="OriginalLocationILR", Mandatory=$false, HelpMessage='Maximum matching value for Item Level Recovery.')]
        # [Parameter(ParameterSetName="AlternateLocationILR", Mandatory=$false, HelpMessage='Maximum matching value for Item Level Recovery.')]
        [System.String[]]
        ${ToPrefixPattern},

        [Parameter(Mandatory=$false, HelpMessage='Secret uri for secret store authentication of data source. This parameter is only supported for AzureDatabaseForPostgreSQL currently.')]
        [System.String]
        ${SecretStoreURI},

        [Parameter(Mandatory=$false, HelpMessage='Secret store type for secret store authentication of data source. This parameter is only supported for AzureDatabaseForPostgreSQL currently.')]
        [ValidateSet("AzureKeyVault")]
        [Microsoft.Azure.PowerShell.Cmdlets.DataProtection.Support.SecretStoreTypes]
        ${SecretStoreType}    
    )

    process
    {         
        # Validations
        $parameterSetName = $PsCmdlet.ParameterSetName

        $restoreRequest = $null
        $restoreMode = $null
        $manifest = LoadManifest -DatasourceType $DatasourceType.ToString()

        # Choose Restore Request Type Based on Recovery Point ID/ Time
        if(($RecoveryPoint -ne $null) -and ($RecoveryPoint -ne ""))
        {               
            Write-Debug -Message $RecoveryPoint
            
            if($PSBoundParameters.ContainsKey("RehydrationPriority")){
                $restoreRequest = [Microsoft.Azure.PowerShell.Cmdlets.DataProtection.Models.Api20220501.AzureBackupRestoreWithRehydrationRequest]::new()
                $restoreRequest.ObjectType = "AzureBackupRestoreWithRehydrationRequest"   
                $restoreRequest.RehydrationPriority = $RehydrationPriority
                if($PSBoundParameters.ContainsKey("RehydrationDuration")){
                    $restoreRequest.RehydrationRetentionDuration = "P" + $RehydrationDuration + "D"
                }
                else{
                    $restoreRequest.RehydrationRetentionDuration = "P15D"
                }                
            }
            else{
                $restoreRequest = [Microsoft.Azure.PowerShell.Cmdlets.DataProtection.Models.Api20220501.AzureBackupRecoveryPointBasedRestoreRequest]::new()
                $restoreRequest.ObjectType = "AzureBackupRecoveryPointBasedRestoreRequest"            
            }            
            $restoreRequest.RecoveryPointId = $RecoveryPoint
            $restoreMode = "RecoveryPointBased"
        }
        elseif(($PointInTime -ne $null)  -and ($PointInTime -ne "")) # RecoveryPointInTimeBasedRestore
        {
            $utcTime = $PointInTime.ToUniversalTime().ToString("yyyy-MM-ddTHH:mm:ss.0000000Z")
            Write-Debug -Message $utcTime
            $restoreRequest = [Microsoft.Azure.PowerShell.Cmdlets.DataProtection.Models.Api20220501.AzureBackupRecoveryTimeBasedRestoreRequest]::new()
            $restoreRequest.ObjectType = "AzureBackupRecoveryTimeBasedRestoreRequest"
            $restoreRequest.RecoveryPointTime = $utcTime
            $restoreMode = "PointInTimeBased"
        }
        else{
            $errormsg = "Please input either RecoveryPoint or PointInTime parameter"
    		throw $errormsg
        }
        
        #Validate Restore Options = recoverypoint, ALR,OLR,ILR
        ValidateRestoreOptions -DatasourceType $DatasourceType -RestoreMode $restoreMode -RestoreTargetType $RestoreType -ItemLevelRecovery $ItemLevelRecovery -SecretStoreURI $SecretStoreURI

        # Initialize Restore Target Info based on Type provided

        if($RestoreType -eq "RestoreAsFiles") 
        {
           $restoreRequest.RestoreTargetInfo = [Microsoft.Azure.PowerShell.Cmdlets.DataProtection.Models.Api20220501.RestoreFilesTargetInfo]::new()
           $restoreRequest.RestoreTargetInfo.ObjectType = "RestoreFilesTargetInfo"

           if(!($PSBoundParameters.ContainsKey("FileNamePrefix")) -or !($PSBoundParameters.ContainsKey("TargetContainerURI")) ){
                $errormsg = "FileNamePrefix and TargetContainerURI parameters are required for RestoreAsFiles "
    			    throw $errormsg
           }

           $restoreRequest.RestoreTargetInfo.TargetDetail.FilePrefix = $FileNamePrefix
           $restoreRequest.RestoreTargetInfo.TargetDetail.RestoreTargetLocationType = "AzureBlobs"
           $restoreRequest.RestoreTargetInfo.TargetDetail.Url = $TargetContainerURI
        }
        elseif(!($ItemLevelRecovery))
        {   
            # RestoreTargetInfo for OLR ALR Full recovery
            $restoreRequest.RestoreTargetInfo = [Microsoft.Azure.PowerShell.Cmdlets.DataProtection.Models.Api20220501.RestoreTargetInfo]::new()
            $restoreRequest.RestoreTargetInfo.ObjectType = "restoreTargetInfo"
        }        
        else 
        {
            # ILR: ItemLevelRestoreTargetInfo
            $restoreRequest.RestoreTargetInfo = [Microsoft.Azure.PowerShell.Cmdlets.DataProtection.Models.Api20220501.ItemLevelRestoreTargetInfo]::new()
            $restoreRequest.RestoreTargetInfo.ObjectType = "itemLevelRestoreTargetInfo"

            $restoreCriteriaList = @()
            
            if($ContainersList.length -gt 0){                
                for($i = 0; $i -lt $ContainersList.length; $i++){
                                
                    $restoreCriteria =  [Microsoft.Azure.PowerShell.Cmdlets.DataProtection.Models.Api20220501.RangeBasedItemLevelRestoreCriteria]::new()

                    $restoreCriteria.ObjectType = "RangeBasedItemLevelRestoreCriteria"
                    $restoreCriteria.MinMatchingValue = $ContainersList[$i]
                    $restoreCriteria.MaxMatchingValue = $ContainersList[$i] + "-0"

                    # adding a criteria for each container given
                    $restoreCriteriaList += ($restoreCriteria)
                }
            }
            elseif($FromPrefixPattern.length -gt 0){
                
                if(($FromPrefixPattern.length -ne $ToPrefixPattern.length) -or ($FromPrefixPattern.length -gt 10) -or ($ToPrefixPattern.length -gt 10)){
                    $errormsg = "FromPrefixPattern and ToPrefixPattern parameters maximum length can be 10 and must be equal "
    			    throw $errormsg
                }
                
                for($i = 0; $i -lt $FromPrefixPattern.length; $i++){
                                
                    $restoreCriteria =  [Microsoft.Azure.PowerShell.Cmdlets.DataProtection.Models.Api20220501.RangeBasedItemLevelRestoreCriteria]::new()

                    $restoreCriteria.ObjectType = "RangeBasedItemLevelRestoreCriteria"
                    $restoreCriteria.MinMatchingValue = $FromPrefixPattern[$i]
                    $restoreCriteria.MaxMatchingValue = $ToPrefixPattern[$i]

                    # adding a criteria for each container given
                    $restoreCriteriaList += ($restoreCriteria)
                }                
            }    
            else{
                 $errormsg = "Provide ContainersList or Prefixes for Item Level Recovery"
    			 throw $errormsg            
            }

            $restoreRequest.RestoreTargetInfo.RestoreCriterion = $restoreCriteriaList
        }

        # Fill other fields of Restore Object based on inputs given        
        $restoreRequest.SourceDataStoreType = $SourceDataStore
        $restoreRequest.RestoreTargetInfo.RestoreLocation = $RestoreLocation

        
        if($RestoreType -eq "AlternateLocation"){

            if(($TargetResourceId -eq $null) -or ($TargetResourceId -eq ""))
            {
                $errormsg = "Please input TargetResourceId for alternate location recovery"
    		    throw $errormsg
            }
            $resourceId = $TargetResourceId
        }
        elseif($RestoreType -eq "OriginalLocation"){

            if(($BackupInstance -eq $null) -or ($BackupInstance -eq ""))
            {                
                $errormsg = "Please input BackupInstance for original location recovery"
    		    throw $errormsg
            }
            $resourceId = $BackupInstance.Property.DataSourceInfo.ResourceId
        }

        if( ($resourceId -ne $null) -and ($resourceId -ne "") )
        {            
            # set DatasourceInfo for OLR, ALR, OriginalLocationILR
            $restoreRequest.RestoreTargetInfo.DatasourceInfo = GetDatasourceInfo -ResourceId $resourceId -ResourceLocation $RestoreLocation -DatasourceType $DatasourceType
            
            if($manifest.isProxyResource -eq $true)  
            {
                $restoreRequest.RestoreTargetInfo.DatasourceSetInfo = GetDatasourceSetInfo -DatasourceInfo $restoreRequest.RestoreTargetInfo.DatasourceInfo
            }
        } 
        
        # secret store authentication
        if($PSBoundParameters.ContainsKey("SecretStoreURI"))
        {                        
            if($manifest.supportSecretStoreAuthentication -eq $true){
                if(!($PSBoundParameters.ContainsKey("SecretStoreType")))
                {        
                    $errormsg = "Please input SecretStoreType"
        		    throw $errormsg                    
                }
                $restoreRequest.RestoreTargetInfo.DatasourceAuthCredentials = [Microsoft.Azure.PowerShell.Cmdlets.DataProtection.Models.Api20220501.SecretStoreBasedAuthCredentials]::new()
                $restoreRequest.RestoreTargetInfo.DatasourceAuthCredentials.ObjectType = "SecretStoreBasedAuthCredentials"
                $restoreRequest.RestoreTargetInfo.DatasourceAuthCredentials.SecretStoreResource =  [Microsoft.Azure.PowerShell.Cmdlets.DataProtection.Models.Api20220501.SecretStoreResource]::new()
                $restoreRequest.RestoreTargetInfo.DatasourceAuthCredentials.SecretStoreResource.SecretStoreType = $SecretStoreType
                $restoreRequest.RestoreTargetInfo.DatasourceAuthCredentials.SecretStoreResource.Uri = $SecretStoreURI
            }
            else{
                $errormsg = "Please ensure that secret store based authentication is supported for given data source"
        		throw $errormsg
            }            
        }

        return $restoreRequest
    }
}
# SIG # Begin signature block
# MIInzAYJKoZIhvcNAQcCoIInvTCCJ7kCAQExDzANBglghkgBZQMEAgEFADB5Bgor
# BgEEAYI3AgEEoGswaTA0BgorBgEEAYI3AgEeMCYCAwEAAAQQH8w7YFlLCE63JNLG
# KX7zUQIBAAIBAAIBAAIBAAIBADAxMA0GCWCGSAFlAwQCAQUABCA3khdpHnaxogOz
# 3qnu1qExlfHzbItknolvcNzvEcY+saCCDYEwggX/MIID56ADAgECAhMzAAACzI61
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
# RcBCyZt2WwqASGv9eZ/BvW1taslScxMNelDNMYIZoTCCGZ0CAQEwgZUwfjELMAkG
# A1UEBhMCVVMxEzARBgNVBAgTCldhc2hpbmd0b24xEDAOBgNVBAcTB1JlZG1vbmQx
# HjAcBgNVBAoTFU1pY3Jvc29mdCBDb3Jwb3JhdGlvbjEoMCYGA1UEAxMfTWljcm9z
# b2Z0IENvZGUgU2lnbmluZyBQQ0EgMjAxMQITMwAAAsyOtZamvdHJTgAAAAACzDAN
# BglghkgBZQMEAgEFAKCBrjAZBgkqhkiG9w0BCQMxDAYKKwYBBAGCNwIBBDAcBgor
# BgEEAYI3AgELMQ4wDAYKKwYBBAGCNwIBFTAvBgkqhkiG9w0BCQQxIgQgOTVCEddD
# z+iB1ZWJafj/yfvbGxbCPCZMi4sg8kfSWxgwQgYKKwYBBAGCNwIBDDE0MDKgFIAS
# AE0AaQBjAHIAbwBzAG8AZgB0oRqAGGh0dHA6Ly93d3cubWljcm9zb2Z0LmNvbTAN
# BgkqhkiG9w0BAQEFAASCAQCf1+ihVPFXhHnhgJeWmMmcCg4XJbj+mnUHFwfsU1KU
# Dy9MyNnTenL1E3kUXO+1m52yrIChlD6d8kFI81aTONlKHZKNuvOk1HzBrlLx3cK+
# 9gBlJsEp/hsEQ8JRLi7IkXdnmmCSCyOaZHdyMIIH+8Rdy9CUCIMmyrg/d1rwa3IS
# TgYIjzAuLkIT62OaU7Y4bShJ4M1qJPehaHVPo0wfZXtz+IUYj6MY97Y0goOhpqZr
# aCUC+WNrSYpLJ7htKKsH271DMFoWiOvWtNhI1Tiyejv1NvJjnVN2Hj4ab9/uVj4P
# AsL5hg3UIVsfh0wGsfGrkiW0AsEQopKRuuyV3bcJkbIUoYIXKzCCFycGCisGAQQB
# gjcDAwExghcXMIIXEwYJKoZIhvcNAQcCoIIXBDCCFwACAQMxDzANBglghkgBZQME
# AgEFADCCAVgGCyqGSIb3DQEJEAEEoIIBRwSCAUMwggE/AgEBBgorBgEEAYRZCgMB
# MDEwDQYJYIZIAWUDBAIBBQAEIJWf5mcbU0yU1wx69lBB602daKqdJvOiGDG6RRgb
# Cv/nAgZjS/JICt8YEjIwMjIxMDI4MDcyNjUzLjYxWjAEgAIB9KCB2KSB1TCB0jEL
# MAkGA1UEBhMCVVMxEzARBgNVBAgTCldhc2hpbmd0b24xEDAOBgNVBAcTB1JlZG1v
# bmQxHjAcBgNVBAoTFU1pY3Jvc29mdCBDb3Jwb3JhdGlvbjEtMCsGA1UECxMkTWlj
# cm9zb2Z0IElyZWxhbmQgT3BlcmF0aW9ucyBMaW1pdGVkMSYwJAYDVQQLEx1UaGFs
# ZXMgVFNTIEVTTjpBMjQwLTRCODItMTMwRTElMCMGA1UEAxMcTWljcm9zb2Z0IFRp
# bWUtU3RhbXAgU2VydmljZaCCEXswggcnMIIFD6ADAgECAhMzAAABuAjUwbh54FFJ
# AAEAAAG4MA0GCSqGSIb3DQEBCwUAMHwxCzAJBgNVBAYTAlVTMRMwEQYDVQQIEwpX
# YXNoaW5ndG9uMRAwDgYDVQQHEwdSZWRtb25kMR4wHAYDVQQKExVNaWNyb3NvZnQg
# Q29ycG9yYXRpb24xJjAkBgNVBAMTHU1pY3Jvc29mdCBUaW1lLVN0YW1wIFBDQSAy
# MDEwMB4XDTIyMDkyMDIwMjIxNloXDTIzMTIxNDIwMjIxNlowgdIxCzAJBgNVBAYT
# AlVTMRMwEQYDVQQIEwpXYXNoaW5ndG9uMRAwDgYDVQQHEwdSZWRtb25kMR4wHAYD
# VQQKExVNaWNyb3NvZnQgQ29ycG9yYXRpb24xLTArBgNVBAsTJE1pY3Jvc29mdCBJ
# cmVsYW5kIE9wZXJhdGlvbnMgTGltaXRlZDEmMCQGA1UECxMdVGhhbGVzIFRTUyBF
# U046QTI0MC00QjgyLTEzMEUxJTAjBgNVBAMTHE1pY3Jvc29mdCBUaW1lLVN0YW1w
# IFNlcnZpY2UwggIiMA0GCSqGSIb3DQEBAQUAA4ICDwAwggIKAoICAQCcG7H8ERxE
# Z+QveUDxp9+7SebzomPWlo3iA8aYGl2mBoqrMNBtHLwit2Lpa6nphH9gpBknXDiQ
# BfvhKoTkqqztd5xnI6sOoRTZ7BsCgDcs3XcJzjtI89ZXwSCLu+023zb52lm8Ekbt
# A0xhwO5+z0dDGCfWwvx6KUraWxX+tOiynE1p8GlLhHQIcehQKoNa5ILoIrrmmsSs
# sUZHYxWSyhVxFy/adNT7cEtHxur2YkVZxCoHmpdk3i73QCKmqQcJbT2In4Kp6e2e
# FSTHD6NE1pkTVRTnB0TcFh3oTfcYOroCBlz6O4TKVqz4IOJqBztnqXNE9+q4JvYZ
# Q65dvGxuU2pJlezSffJGxeZYLZa6ME+nnMBFbbi3eGtIM2KoWp1u82hWZw37ecjH
# scufYnxE3c6cAK49pyQMiLIqtT2N1z5tplDC5QApLKnpRyn1ooSvxXocP5s4qLwV
# cJJK/xtBdfTloEfjAVCon8KTskIiwMa6r1Z3wmOEIyQmYhyLkteRwkP0yLf0I+Md
# Vr0WtVKo55qS7uP8gWFmbHb2aKvElyO4jrO5rnnACXhJGJTOojpDIoIcxIY0CvU4
# T6aALZbl2y+6iBxq3xZR5l/+LKHO449Y/Lgd9VN+ICZQdl6YYzGk/hPjvUiJpP+h
# kVfUpvAvPBZ5ptlXcDJbgjQFMzxY37x8dwIDAQABo4IBSTCCAUUwHQYDVR0OBBYE
# FMT9RyU3hcMzWKNZ437nF7lH0GluMB8GA1UdIwQYMBaAFJ+nFV0AXmJdg/Tl0mWn
# G1M1GelyMF8GA1UdHwRYMFYwVKBSoFCGTmh0dHA6Ly93d3cubWljcm9zb2Z0LmNv
# bS9wa2lvcHMvY3JsL01pY3Jvc29mdCUyMFRpbWUtU3RhbXAlMjBQQ0ElMjAyMDEw
# KDEpLmNybDBsBggrBgEFBQcBAQRgMF4wXAYIKwYBBQUHMAKGUGh0dHA6Ly93d3cu
# bWljcm9zb2Z0LmNvbS9wa2lvcHMvY2VydHMvTWljcm9zb2Z0JTIwVGltZS1TdGFt
# cCUyMFBDQSUyMDIwMTAoMSkuY3J0MAwGA1UdEwEB/wQCMAAwFgYDVR0lAQH/BAww
# CgYIKwYBBQUHAwgwDgYDVR0PAQH/BAQDAgeAMA0GCSqGSIb3DQEBCwUAA4ICAQCf
# bpPJosKTKCsNw/feqYhM23oABsZAAR2J9rz9oW6p5EvVPe7P+kJcmToRhbFbnWoi
# 3kWWU7GhuYUdKArgSDWf5XpaOccx3PpgTqQV6cUmltYaqMWgi7FR9RAbc+4p9uR4
# 8vno7gXIpR+hGdGbTcZlhiEM/EdALktE4+FYCVxyJVz/XVToshqPVXpa5PhRsfwQ
# vohLgminfyLMqRz4glAoedgxnPdbNku5XUMdR+ApYzgLWpw3270nowEli6P7N8NF
# zAGw7q1jZ7NF4nQBdkZy9T2saDss/VWGpDRiuBd/7iUWZ1YG7AmLsDV9QZksDNWW
# z0p4IDUhk2cfxUNtCY/7paytK8gG7zWzW+JJGkuGu+u4nwqr1DhS5VE/DzeN4YZX
# cSOshzzDliLSaRByGQYkzSm5QbGGyK4IW9WJvbX0rC2uWSQ81WTZ3UX4VKiTslxf
# glZvTrVZhQxvZCMDOkAF/ENIn+9tc+FTs2Tbw/JLYNZSPl414FwyVbN4eO7DLvRl
# 0mM5Mvu3bYJnN4kT5HWt2FUXZjybTRTdDS8m3LLBO74RQoo++XgxkARatAOClRur
# gXa+lE1sBNFSh8Qc9gaRr5+wQrPucsZxfh1eglInJA6qj4vyCO2bLHfRGz/bs4+J
# bpXVwwD61hrXRqvsCtKHZRjVbgjMbC94Z/PiojvVIjCCB3EwggVZoAMCAQICEzMA
# AAAVxedrngKbSZkAAAAAABUwDQYJKoZIhvcNAQELBQAwgYgxCzAJBgNVBAYTAlVT
# MRMwEQYDVQQIEwpXYXNoaW5ndG9uMRAwDgYDVQQHEwdSZWRtb25kMR4wHAYDVQQK
# ExVNaWNyb3NvZnQgQ29ycG9yYXRpb24xMjAwBgNVBAMTKU1pY3Jvc29mdCBSb290
# IENlcnRpZmljYXRlIEF1dGhvcml0eSAyMDEwMB4XDTIxMDkzMDE4MjIyNVoXDTMw
# MDkzMDE4MzIyNVowfDELMAkGA1UEBhMCVVMxEzARBgNVBAgTCldhc2hpbmd0b24x
# EDAOBgNVBAcTB1JlZG1vbmQxHjAcBgNVBAoTFU1pY3Jvc29mdCBDb3Jwb3JhdGlv
# bjEmMCQGA1UEAxMdTWljcm9zb2Z0IFRpbWUtU3RhbXAgUENBIDIwMTAwggIiMA0G
# CSqGSIb3DQEBAQUAA4ICDwAwggIKAoICAQDk4aZM57RyIQt5osvXJHm9DtWC0/3u
# nAcH0qlsTnXIyjVX9gF/bErg4r25PhdgM/9cT8dm95VTcVrifkpa/rg2Z4VGIwy1
# jRPPdzLAEBjoYH1qUoNEt6aORmsHFPPFdvWGUNzBRMhxXFExN6AKOG6N7dcP2CZT
# fDlhAnrEqv1yaa8dq6z2Nr41JmTamDu6GnszrYBbfowQHJ1S/rboYiXcag/PXfT+
# jlPP1uyFVk3v3byNpOORj7I5LFGc6XBpDco2LXCOMcg1KL3jtIckw+DJj361VI/c
# +gVVmG1oO5pGve2krnopN6zL64NF50ZuyjLVwIYwXE8s4mKyzbnijYjklqwBSru+
# cakXW2dg3viSkR4dPf0gz3N9QZpGdc3EXzTdEonW/aUgfX782Z5F37ZyL9t9X4C6
# 26p+Nuw2TPYrbqgSUei/BQOj0XOmTTd0lBw0gg/wEPK3Rxjtp+iZfD9M269ewvPV
# 2HM9Q07BMzlMjgK8QmguEOqEUUbi0b1qGFphAXPKZ6Je1yh2AuIzGHLXpyDwwvoS
# CtdjbwzJNmSLW6CmgyFdXzB0kZSU2LlQ+QuJYfM2BjUYhEfb3BvR/bLUHMVr9lxS
# UV0S2yW6r1AFemzFER1y7435UsSFF5PAPBXbGjfHCBUYP3irRbb1Hode2o+eFnJp
# xq57t7c+auIurQIDAQABo4IB3TCCAdkwEgYJKwYBBAGCNxUBBAUCAwEAATAjBgkr
# BgEEAYI3FQIEFgQUKqdS/mTEmr6CkTxGNSnPEP8vBO4wHQYDVR0OBBYEFJ+nFV0A
# XmJdg/Tl0mWnG1M1GelyMFwGA1UdIARVMFMwUQYMKwYBBAGCN0yDfQEBMEEwPwYI
# KwYBBQUHAgEWM2h0dHA6Ly93d3cubWljcm9zb2Z0LmNvbS9wa2lvcHMvRG9jcy9S
# ZXBvc2l0b3J5Lmh0bTATBgNVHSUEDDAKBggrBgEFBQcDCDAZBgkrBgEEAYI3FAIE
# DB4KAFMAdQBiAEMAQTALBgNVHQ8EBAMCAYYwDwYDVR0TAQH/BAUwAwEB/zAfBgNV
# HSMEGDAWgBTV9lbLj+iiXGJo0T2UkFvXzpoYxDBWBgNVHR8ETzBNMEugSaBHhkVo
# dHRwOi8vY3JsLm1pY3Jvc29mdC5jb20vcGtpL2NybC9wcm9kdWN0cy9NaWNSb29D
# ZXJBdXRfMjAxMC0wNi0yMy5jcmwwWgYIKwYBBQUHAQEETjBMMEoGCCsGAQUFBzAC
# hj5odHRwOi8vd3d3Lm1pY3Jvc29mdC5jb20vcGtpL2NlcnRzL01pY1Jvb0NlckF1
# dF8yMDEwLTA2LTIzLmNydDANBgkqhkiG9w0BAQsFAAOCAgEAnVV9/Cqt4SwfZwEx
# JFvhnnJL/Klv6lwUtj5OR2R4sQaTlz0xM7U518JxNj/aZGx80HU5bbsPMeTCj/ts
# 0aGUGCLu6WZnOlNN3Zi6th542DYunKmCVgADsAW+iehp4LoJ7nvfam++Kctu2D9I
# dQHZGN5tggz1bSNU5HhTdSRXud2f8449xvNo32X2pFaq95W2KFUn0CS9QKC/GbYS
# EhFdPSfgQJY4rPf5KYnDvBewVIVCs/wMnosZiefwC2qBwoEZQhlSdYo2wh3DYXMu
# LGt7bj8sCXgU6ZGyqVvfSaN0DLzskYDSPeZKPmY7T7uG+jIa2Zb0j/aRAfbOxnT9
# 9kxybxCrdTDFNLB62FD+CljdQDzHVG2dY3RILLFORy3BFARxv2T5JL5zbcqOCb2z
# AVdJVGTZc9d/HltEAY5aGZFrDZ+kKNxnGSgkujhLmm77IVRrakURR6nxt67I6Ile
# T53S0Ex2tVdUCbFpAUR+fKFhbHP+CrvsQWY9af3LwUFJfn6Tvsv4O+S3Fb+0zj6l
# MVGEvL8CwYKiexcdFYmNcP7ntdAoGokLjzbaukz5m/8K6TT4JDVnK+ANuOaMmdbh
# IurwJ0I9JZTmdHRbatGePu1+oDEzfbzL6Xu/OHBE0ZDxyKs6ijoIYn/ZcGNTTY3u
# gm2lBRDBcQZqELQdVTNYs6FwZvKhggLXMIICQAIBATCCAQChgdikgdUwgdIxCzAJ
# BgNVBAYTAlVTMRMwEQYDVQQIEwpXYXNoaW5ndG9uMRAwDgYDVQQHEwdSZWRtb25k
# MR4wHAYDVQQKExVNaWNyb3NvZnQgQ29ycG9yYXRpb24xLTArBgNVBAsTJE1pY3Jv
# c29mdCBJcmVsYW5kIE9wZXJhdGlvbnMgTGltaXRlZDEmMCQGA1UECxMdVGhhbGVz
# IFRTUyBFU046QTI0MC00QjgyLTEzMEUxJTAjBgNVBAMTHE1pY3Jvc29mdCBUaW1l
# LVN0YW1wIFNlcnZpY2WiIwoBATAHBgUrDgMCGgMVAHBrXlahcfyG0ylxy3rlwj0T
# zA+7oIGDMIGApH4wfDELMAkGA1UEBhMCVVMxEzARBgNVBAgTCldhc2hpbmd0b24x
# EDAOBgNVBAcTB1JlZG1vbmQxHjAcBgNVBAoTFU1pY3Jvc29mdCBDb3Jwb3JhdGlv
# bjEmMCQGA1UEAxMdTWljcm9zb2Z0IFRpbWUtU3RhbXAgUENBIDIwMTAwDQYJKoZI
# hvcNAQEFBQACBQDnBZmnMCIYDzIwMjIxMDI4MDc1ODMxWhgPMjAyMjEwMjkwNzU4
# MzFaMHcwPQYKKwYBBAGEWQoEATEvMC0wCgIFAOcFmacCAQAwCgIBAAICBwUCAf8w
# BwIBAAICESkwCgIFAOcG6ycCAQAwNgYKKwYBBAGEWQoEAjEoMCYwDAYKKwYBBAGE
# WQoDAqAKMAgCAQACAwehIKEKMAgCAQACAwGGoDANBgkqhkiG9w0BAQUFAAOBgQB5
# NocUIlW+ifl5Pjg+aPNlxSvPvS/h3kICtOxVgnAmrj+H19iSFHLlbTgWeBuyCWjL
# +mmc2Tr+2qWwohCC2NZDqY3J+VarQkr1lzl2mzNd6FzUmxWFecUMBaYb/niWOI2x
# ANIaAnaq7y1oOX8VBWAkijUf6U3fTS0VI/Q79+aIkzGCBA0wggQJAgEBMIGTMHwx
# CzAJBgNVBAYTAlVTMRMwEQYDVQQIEwpXYXNoaW5ndG9uMRAwDgYDVQQHEwdSZWRt
# b25kMR4wHAYDVQQKExVNaWNyb3NvZnQgQ29ycG9yYXRpb24xJjAkBgNVBAMTHU1p
# Y3Jvc29mdCBUaW1lLVN0YW1wIFBDQSAyMDEwAhMzAAABuAjUwbh54FFJAAEAAAG4
# MA0GCWCGSAFlAwQCAQUAoIIBSjAaBgkqhkiG9w0BCQMxDQYLKoZIhvcNAQkQAQQw
# LwYJKoZIhvcNAQkEMSIEIDTtKEzHrchKioFvflhsgENO5Sdl3he7mwB4qbx2Tg8f
# MIH6BgsqhkiG9w0BCRACLzGB6jCB5zCB5DCBvQQgKOvWOKBwO0OKUvmNTbAX66SG
# E3lrD3hk2potF9Dw+x8wgZgwgYCkfjB8MQswCQYDVQQGEwJVUzETMBEGA1UECBMK
# V2FzaGluZ3RvbjEQMA4GA1UEBxMHUmVkbW9uZDEeMBwGA1UEChMVTWljcm9zb2Z0
# IENvcnBvcmF0aW9uMSYwJAYDVQQDEx1NaWNyb3NvZnQgVGltZS1TdGFtcCBQQ0Eg
# MjAxMAITMwAAAbgI1MG4eeBRSQABAAABuDAiBCC1fx4EcZdMt7RSlc0qMxQiE2Ol
# 9TdYtIUAvlVzsQ7aZjANBgkqhkiG9w0BAQsFAASCAgBYZlcpLmeXYW5R0+Obi6iM
# Bb9POBXfwXu8P7OAqDcvgyYPA8SiFmL/l+rej6RzvWEiFanjclixewY7llrYjXEF
# x0ht6KlYmFgmcjB+7Mh0rwFuLe1RxkEj3f4sbiLSQriBxv7n5rVGddcyYmcE956B
# LdpUXvWNfJdXWbKX3tR1Y0xbGEhA8wkO+RoGPpcUcHm9RHBTqGOtzfch77b1V+/A
# 8LNVyVzrQ+5UBwCAU1plzKTcbG9C3yPe3QUOLCavYzrXZSmg37WYmjxCxh7bVrQ+
# MNjvGmndyUu+37Puv8kFOJf+N6ifM1Y1aNmFvSw03bQBLX0rcqOrqLSdFSQqwWRd
# Kw2fYrgrdApnanJNtxqXScePcGDjUvLnW8FxrgyAZW1dYqW394PQM1tU23jFqBfv
# daJLlH+vvXrs2O5eDYT3YTjQrUIyLsVFiHlFQUiygowFKhTJGi4rc/mvmLH1kQWo
# 7dHx433cYmP++T7iIqrIVadGnFUv3Yv4SUbQ3i7nvzaJLLyspxMdRdMJ4hAEtqKC
# ap0r4zLo+GQj0BPDHblAkF6jti+6PQu7RyKCsuKVqWn3JsVNNMN6T7hLKkor7wJC
# Ge3uEzV/oQtJKvIcE8Mj5uX0JW5axG68pONbRTGtMDAc3wc2re73MGy55WBsqDho
# fT8G5gBw5F8Rc8pW41hxdg==
# SIG # End signature block
