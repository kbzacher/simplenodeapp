
# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# http://www.apache.org/licenses/LICENSE-2.0
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# ----------------------------------------------------------------------------------

<#
.Synopsis
Get requirements state for a data connector type.
.Description
Get requirements state for a data connector type.

.Link
https://docs.microsoft.com/powershell/module/az.securityinsights/test-azsentineldataconnectorcheckrequirement
#>
function Test-AzSentinelDataConnectorCheckRequirement {
    [OutputType([Microsoft.Azure.PowerShell.Cmdlets.SecurityInsights.Models.Api20210901Preview.DataConnectorsCheckRequirements])]
    [CmdletBinding(DefaultParameterSetName = 'AADTenant', PositionalBinding = $false, SupportsShouldProcess, ConfirmImpact = 'Medium')]
    param(
        [Parameter()]
        [Microsoft.Azure.PowerShell.Cmdlets.SecurityInsights.Category('Path')]
        [Microsoft.Azure.PowerShell.Cmdlets.SecurityInsights.Runtime.DefaultInfo(Script = '(Get-AzContext).Subscription.Id')]
        [System.String]
        # Gets subscription credentials which uniquely identify Microsoft Azure subscription.
        # The subscription ID forms part of the URI for every service call.
        ${SubscriptionId},
        
        [Parameter(Mandatory)]
        [Microsoft.Azure.PowerShell.Cmdlets.SecurityInsights.Category('Path')]
        [System.String]
        # The Resource Group Name.
        ${ResourceGroupName},

        [Parameter(Mandatory)]
        #[Alias('DataConnectionName')]
        [Microsoft.Azure.PowerShell.Cmdlets.SecurityInsights.Category('Path')]
        [System.String]
        # The name of the workspace.
        ${WorkspaceName},

        [Parameter(Mandatory)]
        [ArgumentCompleter([Microsoft.Azure.PowerShell.Cmdlets.SecurityInsights.Support.DataConnectorKind])]
        [Microsoft.Azure.PowerShell.Cmdlets.SecurityInsights.Category('Body')]
        [Microsoft.Azure.PowerShell.Cmdlets.SecurityInsights.Support.DataConnectorKind]
        # Kind of the the data connection
        ${Kind},


        [Parameter(ParameterSetName = 'AADTenant')]
        [Microsoft.Azure.PowerShell.Cmdlets.SecurityInsights.Category('Body')]
        [Microsoft.Azure.PowerShell.Cmdlets.SecurityInsights.Runtime.DefaultInfo(Script = '(Get-AzContext).Tenant.Id')]
        [System.String]
        # The TenantId.
        ${TenantId},

        [Parameter(ParameterSetName = 'AzureSecurityCenter', Mandatory)]
        [Microsoft.Azure.PowerShell.Cmdlets.SecurityInsights.Category('Body')]
        [System.String]
        # ASC Subscription Id.
        ${ASCSubscriptionId},

        #[Parameter(ParameterSetName = 'AmazonWebServicesCloudTrail', Mandatory)]
        #[Parameter(ParameterSetName = 'AmazonWebServicesS3', Mandatory)]
        #[Parameter(ParameterSetName = 'GenericUI', Mandatory)]

        [Parameter()]
        [Alias('AzureRMContext', 'AzureCredential')]
        [ValidateNotNull()]
        [Microsoft.Azure.PowerShell.Cmdlets.SecurityInsights.Category('Azure')]
        [System.Management.Automation.PSObject]
        # The credentials, account, tenant, and subscription used for communication with Azure.
        ${DefaultProfile},

        [Parameter()]
        [Microsoft.Azure.PowerShell.Cmdlets.SecurityInsights.Category('Runtime')]
        [System.Management.Automation.SwitchParameter]
        # Run the command as a job
        ${AsJob},

        [Parameter(DontShow)]
        [Microsoft.Azure.PowerShell.Cmdlets.SecurityInsights.Category('Runtime')]
        [System.Management.Automation.SwitchParameter]
        # Wait for .NET debugger to attach
        ${Break},

        [Parameter(DontShow)]
        [ValidateNotNull()]
        [Microsoft.Azure.PowerShell.Cmdlets.SecurityInsights.Category('Runtime')]
        [Microsoft.Azure.PowerShell.Cmdlets.SecurityInsights.Runtime.SendAsyncStep[]]
        # SendAsync Pipeline Steps to be appended to the front of the pipeline
        ${HttpPipelineAppend},

        [Parameter(DontShow)]
        [ValidateNotNull()]
        [Microsoft.Azure.PowerShell.Cmdlets.SecurityInsights.Category('Runtime')]
        [Microsoft.Azure.PowerShell.Cmdlets.SecurityInsights.Runtime.SendAsyncStep[]]
        # SendAsync Pipeline Steps to be prepended to the front of the pipeline
        ${HttpPipelinePrepend},

        [Parameter()]
        [Microsoft.Azure.PowerShell.Cmdlets.SecurityInsights.Category('Runtime')]
        [System.Management.Automation.SwitchParameter]
        # Run the command asynchronously
        ${NoWait},

        [Parameter(DontShow)]
        [Microsoft.Azure.PowerShell.Cmdlets.SecurityInsights.Category('Runtime')]
        [System.Uri]
        # The URI for the proxy server to use
        ${Proxy},

        [Parameter(DontShow)]
        [ValidateNotNull()]
        [Microsoft.Azure.PowerShell.Cmdlets.SecurityInsights.Category('Runtime')]
        [System.Management.Automation.PSCredential]
        # Credentials for a proxy server to use for the remote call
        ${ProxyCredential},

        [Parameter(DontShow)]
        [Microsoft.Azure.PowerShell.Cmdlets.SecurityInsights.Category('Runtime')]
        [System.Management.Automation.SwitchParameter]
        # Use the default credentials for the proxy
        ${ProxyUseDefaultCredentials}
    )

    process {
        try {

            if ($PSBoundParameters['Kind'] -eq 'AzureActiveDirectory'){
                $DataConnectorCheckRequirement = [Microsoft.Azure.PowerShell.Cmdlets.SecurityInsights.Models.Api20210901Preview.AadCheckRequirements]::new()
                $DataConnectorCheckRequirement.TenantId = $PSBoundParameters['TenantId']
                $null = $PSBoundParameters.Remove('TenantId')
            }
            if($PSBoundParameters['Kind'] -eq 'AzureAdvancedThreatProtection'){
                $DataConnectorCheckRequirement = [Microsoft.Azure.PowerShell.Cmdlets.SecurityInsights.Models.Api20210901Preview.AatpCheckRequirements]::new()
                $DataConnectorCheckRequirement.TenantId = $PSBoundParameters['TenantId']
                $null = $PSBoundParameters.Remove('TenantId')
            }
            if($PSBoundParameters['Kind'] -eq 'Dynamics365'){
                $DataConnectorCheckRequirement = [Microsoft.Azure.PowerShell.Cmdlets.SecurityInsights.Models.Api20210901Preview.Dynamics365CheckRequirements]::new()
                $DataConnectorCheckRequirement.TenantId = $PSBoundParameters['TenantId']
                $null = $PSBoundParameters.Remove('TenantId')
            }
            if($PSBoundParameters['Kind'] -eq 'MicrosoftCloudAppSecurity'){
                $DataConnectorCheckRequirement = [Microsoft.Azure.PowerShell.Cmdlets.SecurityInsights.Models.Api20210901Preview.MCASCheckRequirements]::new()
                $DataConnectorCheckRequirement.TenantId = $PSBoundParameters['TenantId']
                $null = $PSBoundParameters.Remove('TenantId')
            }
            if($PSBoundParameters['Kind'] -eq 'MicrosoftDefenderAdvancedThreatProtection'){
                $DataConnectorCheckRequirement = [Microsoft.Azure.PowerShell.Cmdlets.SecurityInsights.Models.Api20210901Preview.MDATPCheckRequirements]::new()
                $DataConnectorCheckRequirement.TenantId = $PSBoundParameters['TenantId']
                $null = $PSBoundParameters.Remove('TenantId')
            }
            if($PSBoundParameters['Kind'] -eq 'MicrosoftThreatIntelligence'){
                $DataConnectorCheckRequirement = [Microsoft.Azure.PowerShell.Cmdlets.SecurityInsights.Models.Api20210901Preview.MSTICheckRequirements]::new()
                $DataConnectorCheckRequirement.TenantId = $PSBoundParameters['TenantId']
                $null = $PSBoundParameters.Remove('TenantId')
            }
            if($PSBoundParameters['Kind'] -eq 'MicrosoftThreatProtection'){
                $DataConnectorCheckRequirement = [Microsoft.Azure.PowerShell.Cmdlets.SecurityInsights.Models.Api20210901Preview.MtpCheckRequirements]::new()
                $DataConnectorCheckRequirement.TenantId = $PSBoundParameters['TenantId']
                $null = $PSBoundParameters.Remove('TenantId')
            }
            #if($PSBoundParameters['Kind'] -eq 'Office365'){
            #    $DataConnectorCheckRequirement = [Microsoft.Azure.PowerShell.Cmdlets.SecurityInsights.Models.Api20210901Preview.Office365CheckRequirements]::new()
            #    $DataConnectorCheckRequirement.TenantId = $PSBoundParameters['TenantId']
            #    $null = $PSBoundParameters.Remove('TenantId')
            #}
            if($PSBoundParameters['Kind'] -eq 'OfficeATP'){
                $DataConnectorCheckRequirement = [Microsoft.Azure.PowerShell.Cmdlets.SecurityInsights.Models.Api20210901Preview.OfficeATPCheckRequirements]::new()
                $DataConnectorCheckRequirement.TenantId = $PSBoundParameters['TenantId']
                $null = $PSBoundParameters.Remove('TenantId')
            }
            if($PSBoundParameters['Kind'] -eq 'OfficeIRM'){
                $DataConnectorCheckRequirement = [Microsoft.Azure.PowerShell.Cmdlets.SecurityInsights.Models.Api20210901Preview.OfficeIrmCheckRequirements]::new()
                $DataConnectorCheckRequirement.TenantId = $PSBoundParameters['TenantId']
                $null = $PSBoundParameters.Remove('TenantId')
            }
            if($PSBoundParameters['Kind'] -eq 'ThreatIntelligence'){
                $DataConnectorCheckRequirement = [Microsoft.Azure.PowerShell.Cmdlets.SecurityInsights.Models.Api20210901Preview.TICheckRequirements]::new()
                $DataConnectorCheckRequirement.TenantId = $PSBoundParameters['TenantId']
                $null = $PSBoundParameters.Remove('TenantId')
            }
            if($PSBoundParameters['Kind'] -eq 'ThreatIntelligenceTaxii'){
                $DataConnectorCheckRequirement = [Microsoft.Azure.PowerShell.Cmdlets.SecurityInsights.Models.Api20210901Preview.TiTaxiiCheckRequirements]::new()
                $DataConnectorCheckRequirement.TenantId = $PSBoundParameters['TenantId']
                $null = $PSBoundParameters.Remove('TenantId')
            }

            if($PSBoundParameters['Kind'] -eq 'AzureSecurityCenter'){
                $DataConnectorCheckRequirement = [Microsoft.Azure.PowerShell.Cmdlets.SecurityInsights.Models.Api20210901Preview.ASCCheckRequirements]::new()
                $DataConnectorCheckRequirement.SubscriptionId = $PSBoundParameters['ASCSubscriptionId']
                $null = $PSBoundParameters.Remove('ASCSubscriptionId')
            }
            #if($PSBoundParameters['Kind'] -eq 'AmazonWebServicesCloudTrail'){}
            #if($PSBoundParameters['Kind'] -eq 'AmazonWebServicesS3'){}
            #if($PSBoundParameters['Kind'] -eq 'GenericUI'){}
    
            $DataConnectorCheckRequirement.Kind = $PSBoundParameters['Kind']
            $null = $PSBoundParameters.Remove('Kind')

            $null = $PSBoundParameters.Add('DataConnectorCheckRequirement', $DataConnectorCheckRequirement)

            Az.SecurityInsights.internal\Test-AzSentinelDataConnectorCheckRequirement @PSBoundParameters
        }
        catch {
            throw
        }
    }
}
# SIG # Begin signature block
# MIInqgYJKoZIhvcNAQcCoIInmzCCJ5cCAQExDzANBglghkgBZQMEAgEFADB5Bgor
# BgEEAYI3AgEEoGswaTA0BgorBgEEAYI3AgEeMCYCAwEAAAQQH8w7YFlLCE63JNLG
# KX7zUQIBAAIBAAIBAAIBAAIBADAxMA0GCWCGSAFlAwQCAQUABCCkPgBKZnGk31BK
# 20MhgbZkE8Dx7YSjoi3ubHJTN384i6CCDYEwggX/MIID56ADAgECAhMzAAACzI61
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
# RcBCyZt2WwqASGv9eZ/BvW1taslScxMNelDNMYIZfzCCGXsCAQEwgZUwfjELMAkG
# A1UEBhMCVVMxEzARBgNVBAgTCldhc2hpbmd0b24xEDAOBgNVBAcTB1JlZG1vbmQx
# HjAcBgNVBAoTFU1pY3Jvc29mdCBDb3Jwb3JhdGlvbjEoMCYGA1UEAxMfTWljcm9z
# b2Z0IENvZGUgU2lnbmluZyBQQ0EgMjAxMQITMwAAAsyOtZamvdHJTgAAAAACzDAN
# BglghkgBZQMEAgEFAKCBrjAZBgkqhkiG9w0BCQMxDAYKKwYBBAGCNwIBBDAcBgor
# BgEEAYI3AgELMQ4wDAYKKwYBBAGCNwIBFTAvBgkqhkiG9w0BCQQxIgQgEzqGiiOv
# 1IbCqICOiaekPMmj3rIGiDgMlrQN0a1fqr8wQgYKKwYBBAGCNwIBDDE0MDKgFIAS
# AE0AaQBjAHIAbwBzAG8AZgB0oRqAGGh0dHA6Ly93d3cubWljcm9zb2Z0LmNvbTAN
# BgkqhkiG9w0BAQEFAASCAQAfN64++8LtjzfTEAX0/9SmcKgfdNNaP8HQ1jqVZT8s
# 9Qq/Y+NPX8HYMkPwJQ9XwtxenSBT5GQY2jOpEb+9vOSsMIO2U1hyLCgfPs+/hqmB
# LPDGs1xSaY4sJzX2ZVfQlvI6fQAMqTlvMNTL7wZjYDrRGB2+EEKZdyxJXYhjU1+E
# b4nrt+vIp6e+kJWprdMrG3vkoXHp0WT7j6VkhokhinvWdB0q6JtZcsf8tyM7TkI9
# SE8B9MD6jHYhvfbJVzM1Or1sZm4bVRvoIdWLEJCHxgwqcx2dpb/7BDEWbAeUGrNU
# FgGHOzLPO/WZURCktXGV80ntuymFGnHVluvN9JBLGzWIoYIXCTCCFwUGCisGAQQB
# gjcDAwExghb1MIIW8QYJKoZIhvcNAQcCoIIW4jCCFt4CAQMxDzANBglghkgBZQME
# AgEFADCCAVUGCyqGSIb3DQEJEAEEoIIBRASCAUAwggE8AgEBBgorBgEEAYRZCgMB
# MDEwDQYJYIZIAWUDBAIBBQAEILauLJBtVRdCBdfU3xn0TuDbri/a14HmCt6i1Rc5
# wQL6AgZjKf4VpFYYEzIwMjIxMDE3MDczNDQxLjUxMVowBIACAfSggdSkgdEwgc4x
# CzAJBgNVBAYTAlVTMRMwEQYDVQQIEwpXYXNoaW5ndG9uMRAwDgYDVQQHEwdSZWRt
# b25kMR4wHAYDVQQKExVNaWNyb3NvZnQgQ29ycG9yYXRpb24xKTAnBgNVBAsTIE1p
# Y3Jvc29mdCBPcGVyYXRpb25zIFB1ZXJ0byBSaWNvMSYwJAYDVQQLEx1UaGFsZXMg
# VFNTIEVTTjpEOURFLUUzOUEtNDNGRTElMCMGA1UEAxMcTWljcm9zb2Z0IFRpbWUt
# U3RhbXAgU2VydmljZaCCEVwwggcQMIIE+KADAgECAhMzAAABrGa8hyJd3j17AAEA
# AAGsMA0GCSqGSIb3DQEBCwUAMHwxCzAJBgNVBAYTAlVTMRMwEQYDVQQIEwpXYXNo
# aW5ndG9uMRAwDgYDVQQHEwdSZWRtb25kMR4wHAYDVQQKExVNaWNyb3NvZnQgQ29y
# cG9yYXRpb24xJjAkBgNVBAMTHU1pY3Jvc29mdCBUaW1lLVN0YW1wIFBDQSAyMDEw
# MB4XDTIyMDMwMjE4NTEyOVoXDTIzMDUxMTE4NTEyOVowgc4xCzAJBgNVBAYTAlVT
# MRMwEQYDVQQIEwpXYXNoaW5ndG9uMRAwDgYDVQQHEwdSZWRtb25kMR4wHAYDVQQK
# ExVNaWNyb3NvZnQgQ29ycG9yYXRpb24xKTAnBgNVBAsTIE1pY3Jvc29mdCBPcGVy
# YXRpb25zIFB1ZXJ0byBSaWNvMSYwJAYDVQQLEx1UaGFsZXMgVFNTIEVTTjpEOURF
# LUUzOUEtNDNGRTElMCMGA1UEAxMcTWljcm9zb2Z0IFRpbWUtU3RhbXAgU2Vydmlj
# ZTCCAiIwDQYJKoZIhvcNAQEBBQADggIPADCCAgoCggIBAMd4C1DFF2Lux3HMK8AE
# lMdTF4iG9ROyKQWFehTXe+EX1QOrTBFnhMAKNHIQWoxkK1W62/oQQQmtIHo8sphM
# t1WpkLNvCm3La8sdVL3t/BAx7UWkmfvujJ3KDaSgt3clc5uNPUj7e32U4n/Ep9oO
# c+Pv/EHc7XGH1fGRvLRYzwoxP1xkKleusbIzT/aKn6WC2BggPzjHXin9KE7kriCu
# qA+JNhskkedTHJQIotblR+rZcsexTSmjO+Z7R0mfeHiU8DntvZvZ/9ad9XUhDwUJ
# FKZ8ZZvxnqnZXwFYkDKNagY8g06BF1vDulblAs6A4huP1e7ptKFppB1VZkLUAmIW
# 1xxJGs3keidATWIVx22sGVyemaT29NftDp/jRsDw/ahwv1Nkv6WvykovK0kDPIY9
# TCW9cRbvUeElk++CVM7cIqrl8QY3mgEQ8oi45VzEBXuY04Y1KijbGLYRFNUypXMR
# DApV+kcjG8uST13mSCf2iMhWRRLz9/jyIwe7lmXz4zUyYckr+2Nm8GrSq5fVAPsh
# IO8Ab/aOo6/oe3G3Y+cil8iyRJLJNxbMYxiQJKZvbxlCIp+pGInaD1373M7KPPF/
# yXeT4hG0LqXKvelkgtlpzefPrmUVupjYTgeGfupUwFzymSk4JRNO1thRB0bDKDIy
# NMVqEuvV1UxdcricV0ojgeJHAgMBAAGjggE2MIIBMjAdBgNVHQ4EFgQUWBGfdwTL
# H0BnSjx8SVqYWsBAjk0wHwYDVR0jBBgwFoAUn6cVXQBeYl2D9OXSZacbUzUZ6XIw
# XwYDVR0fBFgwVjBUoFKgUIZOaHR0cDovL3d3dy5taWNyb3NvZnQuY29tL3BraW9w
# cy9jcmwvTWljcm9zb2Z0JTIwVGltZS1TdGFtcCUyMFBDQSUyMDIwMTAoMSkuY3Js
# MGwGCCsGAQUFBwEBBGAwXjBcBggrBgEFBQcwAoZQaHR0cDovL3d3dy5taWNyb3Nv
# ZnQuY29tL3BraW9wcy9jZXJ0cy9NaWNyb3NvZnQlMjBUaW1lLVN0YW1wJTIwUENB
# JTIwMjAxMCgxKS5jcnQwDAYDVR0TAQH/BAIwADATBgNVHSUEDDAKBggrBgEFBQcD
# CDANBgkqhkiG9w0BAQsFAAOCAgEAedC1AlhVXHCldk8toIzAW9QyITcReyhUps1u
# D67zCC308fRzYFES/2vMX7o0ObJgzCxT1ni0vkcs8WG2MUIsk91RCPIeDzTQItIp
# j9ZTz9h0tufcKGm3ahknRs1hoV12jRFkcaqXJo1fsyuoKgD+FTT2lOvrEsNjJh5w
# Esi+PB/mVmh/Ja0Vu8jhUJc1hrBUQ5YisQ4N00snZwhOoCePXbdD6HGs1cmsXZbr
# kT8vNPYV8LnI4lxuJ/YaYS20qQr6Y9DIHFDNYxZbTlsQeXs/KjnhRNdFiCGoAcLH
# WweWeRszh2iUhMfY1/79d7somfjx6ZyJPZOr4fE0UT2l/rBaBTroPpDOvpaOsY6E
# /teLLMfynr6UOQeE4lRiw59siVGyAGqpTBTbdzAFLBFH40ubr7VEldmjiHa14EkZ
# xYvcgzKxKqub4yrKafo/j9aUbwLrL2VMHWcpa18Jhv6zIjd01IGkUdj3UJ+JKQNA
# z5eyPyQSZPt9ws8bynodGlM5nYkHBy7rPvj45y+Zz7jrLgjgvZIixGszwqKyKJ47
# APHxrH8GjCQusbvW9NF4LAYKoZZGj7PwmQA+XmwD5tfUQ0KuzMRFmMpOUztiTAgJ
# jQf9TMuc3pYmpFWEr8ksYdwrjrdWYALCXA/IQXEdAisQwj5YzTsh4QxTUq+vRSxs
# 93yB3nIwggdxMIIFWaADAgECAhMzAAAAFcXna54Cm0mZAAAAAAAVMA0GCSqGSIb3
# DQEBCwUAMIGIMQswCQYDVQQGEwJVUzETMBEGA1UECBMKV2FzaGluZ3RvbjEQMA4G
# A1UEBxMHUmVkbW9uZDEeMBwGA1UEChMVTWljcm9zb2Z0IENvcnBvcmF0aW9uMTIw
# MAYDVQQDEylNaWNyb3NvZnQgUm9vdCBDZXJ0aWZpY2F0ZSBBdXRob3JpdHkgMjAx
# MDAeFw0yMTA5MzAxODIyMjVaFw0zMDA5MzAxODMyMjVaMHwxCzAJBgNVBAYTAlVT
# MRMwEQYDVQQIEwpXYXNoaW5ndG9uMRAwDgYDVQQHEwdSZWRtb25kMR4wHAYDVQQK
# ExVNaWNyb3NvZnQgQ29ycG9yYXRpb24xJjAkBgNVBAMTHU1pY3Jvc29mdCBUaW1l
# LVN0YW1wIFBDQSAyMDEwMIICIjANBgkqhkiG9w0BAQEFAAOCAg8AMIICCgKCAgEA
# 5OGmTOe0ciELeaLL1yR5vQ7VgtP97pwHB9KpbE51yMo1V/YBf2xK4OK9uT4XYDP/
# XE/HZveVU3Fa4n5KWv64NmeFRiMMtY0Tz3cywBAY6GB9alKDRLemjkZrBxTzxXb1
# hlDcwUTIcVxRMTegCjhuje3XD9gmU3w5YQJ6xKr9cmmvHaus9ja+NSZk2pg7uhp7
# M62AW36MEBydUv626GIl3GoPz130/o5Tz9bshVZN7928jaTjkY+yOSxRnOlwaQ3K
# Ni1wjjHINSi947SHJMPgyY9+tVSP3PoFVZhtaDuaRr3tpK56KTesy+uDRedGbsoy
# 1cCGMFxPLOJiss254o2I5JasAUq7vnGpF1tnYN74kpEeHT39IM9zfUGaRnXNxF80
# 3RKJ1v2lIH1+/NmeRd+2ci/bfV+AutuqfjbsNkz2K26oElHovwUDo9Fzpk03dJQc
# NIIP8BDyt0cY7afomXw/TNuvXsLz1dhzPUNOwTM5TI4CvEJoLhDqhFFG4tG9ahha
# YQFzymeiXtcodgLiMxhy16cg8ML6EgrXY28MyTZki1ugpoMhXV8wdJGUlNi5UPkL
# iWHzNgY1GIRH29wb0f2y1BzFa/ZcUlFdEtsluq9QBXpsxREdcu+N+VLEhReTwDwV
# 2xo3xwgVGD94q0W29R6HXtqPnhZyacaue7e3PmriLq0CAwEAAaOCAd0wggHZMBIG
# CSsGAQQBgjcVAQQFAgMBAAEwIwYJKwYBBAGCNxUCBBYEFCqnUv5kxJq+gpE8RjUp
# zxD/LwTuMB0GA1UdDgQWBBSfpxVdAF5iXYP05dJlpxtTNRnpcjBcBgNVHSAEVTBT
# MFEGDCsGAQQBgjdMg30BATBBMD8GCCsGAQUFBwIBFjNodHRwOi8vd3d3Lm1pY3Jv
# c29mdC5jb20vcGtpb3BzL0RvY3MvUmVwb3NpdG9yeS5odG0wEwYDVR0lBAwwCgYI
# KwYBBQUHAwgwGQYJKwYBBAGCNxQCBAweCgBTAHUAYgBDAEEwCwYDVR0PBAQDAgGG
# MA8GA1UdEwEB/wQFMAMBAf8wHwYDVR0jBBgwFoAU1fZWy4/oolxiaNE9lJBb186a
# GMQwVgYDVR0fBE8wTTBLoEmgR4ZFaHR0cDovL2NybC5taWNyb3NvZnQuY29tL3Br
# aS9jcmwvcHJvZHVjdHMvTWljUm9vQ2VyQXV0XzIwMTAtMDYtMjMuY3JsMFoGCCsG
# AQUFBwEBBE4wTDBKBggrBgEFBQcwAoY+aHR0cDovL3d3dy5taWNyb3NvZnQuY29t
# L3BraS9jZXJ0cy9NaWNSb29DZXJBdXRfMjAxMC0wNi0yMy5jcnQwDQYJKoZIhvcN
# AQELBQADggIBAJ1VffwqreEsH2cBMSRb4Z5yS/ypb+pcFLY+TkdkeLEGk5c9MTO1
# OdfCcTY/2mRsfNB1OW27DzHkwo/7bNGhlBgi7ulmZzpTTd2YurYeeNg2LpypglYA
# A7AFvonoaeC6Ce5732pvvinLbtg/SHUB2RjebYIM9W0jVOR4U3UkV7ndn/OOPcbz
# aN9l9qRWqveVtihVJ9AkvUCgvxm2EhIRXT0n4ECWOKz3+SmJw7wXsFSFQrP8DJ6L
# GYnn8AtqgcKBGUIZUnWKNsIdw2FzLixre24/LAl4FOmRsqlb30mjdAy87JGA0j3m
# Sj5mO0+7hvoyGtmW9I/2kQH2zsZ0/fZMcm8Qq3UwxTSwethQ/gpY3UA8x1RtnWN0
# SCyxTkctwRQEcb9k+SS+c23Kjgm9swFXSVRk2XPXfx5bRAGOWhmRaw2fpCjcZxko
# JLo4S5pu+yFUa2pFEUep8beuyOiJXk+d0tBMdrVXVAmxaQFEfnyhYWxz/gq77EFm
# PWn9y8FBSX5+k77L+DvktxW/tM4+pTFRhLy/AsGConsXHRWJjXD+57XQKBqJC482
# 2rpM+Zv/Cuk0+CQ1ZyvgDbjmjJnW4SLq8CdCPSWU5nR0W2rRnj7tfqAxM328y+l7
# vzhwRNGQ8cirOoo6CGJ/2XBjU02N7oJtpQUQwXEGahC0HVUzWLOhcGbyoYICzzCC
# AjgCAQEwgfyhgdSkgdEwgc4xCzAJBgNVBAYTAlVTMRMwEQYDVQQIEwpXYXNoaW5n
# dG9uMRAwDgYDVQQHEwdSZWRtb25kMR4wHAYDVQQKExVNaWNyb3NvZnQgQ29ycG9y
# YXRpb24xKTAnBgNVBAsTIE1pY3Jvc29mdCBPcGVyYXRpb25zIFB1ZXJ0byBSaWNv
# MSYwJAYDVQQLEx1UaGFsZXMgVFNTIEVTTjpEOURFLUUzOUEtNDNGRTElMCMGA1UE
# AxMcTWljcm9zb2Z0IFRpbWUtU3RhbXAgU2VydmljZaIjCgEBMAcGBSsOAwIaAxUA
# sRrSE7C4sEn96AMhjNkXZ0Y1iqCggYMwgYCkfjB8MQswCQYDVQQGEwJVUzETMBEG
# A1UECBMKV2FzaGluZ3RvbjEQMA4GA1UEBxMHUmVkbW9uZDEeMBwGA1UEChMVTWlj
# cm9zb2Z0IENvcnBvcmF0aW9uMSYwJAYDVQQDEx1NaWNyb3NvZnQgVGltZS1TdGFt
# cCBQQ0EgMjAxMDANBgkqhkiG9w0BAQUFAAIFAOb3a0owIhgPMjAyMjEwMTcwOTQ4
# NThaGA8yMDIyMTAxODA5NDg1OFowdDA6BgorBgEEAYRZCgQBMSwwKjAKAgUA5vdr
# SgIBADAHAgEAAgIVeTAHAgEAAgIRFjAKAgUA5vi8ygIBADA2BgorBgEEAYRZCgQC
# MSgwJjAMBgorBgEEAYRZCgMCoAowCAIBAAIDB6EgoQowCAIBAAIDAYagMA0GCSqG
# SIb3DQEBBQUAA4GBAKW1z90gT3bdXWVHOVBcBtg3fQBr9amlBMIFmPUwDGJtaxGu
# xsd8fS1yNAdrYA7E72/35BiHwuJQmFnyYa2xwohHhYFkv2rWrLM2BOg/1zGzXbRX
# pg3/+G4chTHi0dIXKRYTadNuAntYSlQGQdtRC6yRu5jOOOeZ8g7FIrGdgAEOMYIE
# DTCCBAkCAQEwgZMwfDELMAkGA1UEBhMCVVMxEzARBgNVBAgTCldhc2hpbmd0b24x
# EDAOBgNVBAcTB1JlZG1vbmQxHjAcBgNVBAoTFU1pY3Jvc29mdCBDb3Jwb3JhdGlv
# bjEmMCQGA1UEAxMdTWljcm9zb2Z0IFRpbWUtU3RhbXAgUENBIDIwMTACEzMAAAGs
# ZryHIl3ePXsAAQAAAawwDQYJYIZIAWUDBAIBBQCgggFKMBoGCSqGSIb3DQEJAzEN
# BgsqhkiG9w0BCRABBDAvBgkqhkiG9w0BCQQxIgQgvBdH26mrn8Omeg5ytlsa3EC0
# +TPAQNPBqAv3qMoXF0IwgfoGCyqGSIb3DQEJEAIvMYHqMIHnMIHkMIG9BCD5twGS
# gzgvCXEAcrVz56m79Pp+bQJf+0+Lg2faBCzC9TCBmDCBgKR+MHwxCzAJBgNVBAYT
# AlVTMRMwEQYDVQQIEwpXYXNoaW5ndG9uMRAwDgYDVQQHEwdSZWRtb25kMR4wHAYD
# VQQKExVNaWNyb3NvZnQgQ29ycG9yYXRpb24xJjAkBgNVBAMTHU1pY3Jvc29mdCBU
# aW1lLVN0YW1wIFBDQSAyMDEwAhMzAAABrGa8hyJd3j17AAEAAAGsMCIEIPPUOE5H
# g0h1F8kXv5omteAERhAYIBXgNuTfEfRaA1X6MA0GCSqGSIb3DQEBCwUABIICAMFV
# xjjYHf+zrctY34JPtEGh4hrXNS6fXviyT1L4JsXpSJ8D9jFRIZTD0+PQklnocq1w
# kQPnVA0YTk8/2q37uNRmTmmwss/6T08Td+UpyiCUw41C18GjeQkoJylQx2QSdVQv
# Q2jMJXWHoygoJ/bI/YUXJr2rX4TIjF3t/ZhuQgJ980fB7dSbCrAJ/1FKVqOS/mVm
# /69HH/9A6eyBSI0w1cQJ6ciwW19C/mF6OPQUh5q0v7h6KdWiJpjnWEBskoR0DzzN
# 3V2NszFnbwMrz1wqvTofj4pFcWAPQANnoik8Mn3ffFNPGSF4WdPjNuPw1bOZzqoY
# dUFtu9yuE0xpuUDR8+vm45yAWvPMW/BjgNcw2UB9s+ktYFbHXyMB2O2sHc87Pdlf
# Fwg83vjxDAuafpwntRVWn6HMMKKTaP8YROYoDmHNEkQOEnHQclvJFJMCfohc6piD
# 4nTMj13EoTXv1U8rkYnBg7o1yO9U9oINIyiDrAXrdUp4dLEppzxeqGgbd18YBc1h
# QXSwdojUNgbDLV/QswUIUTRFj7w/cKZlWR3pJgo6v01LtaSPm6OqH0ABM6cJEDvB
# VnNHC5G47KT07dNX9NGV+tPfln6GcquK/9sTcNT068psaCgksLTtJmrbInqsLlPV
# SGMluGFNufKm2WmRVfbrbKf+d2/JX/glrp6RlCh5
# SIG # End signature block
