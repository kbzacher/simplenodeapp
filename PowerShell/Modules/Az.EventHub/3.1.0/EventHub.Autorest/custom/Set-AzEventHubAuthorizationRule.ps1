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
Sets an EventHub Authorization Rule
.Description
Sets an EventHub Authorization Rule
#>

function Set-AzEventHubAuthorizationRule{
	[OutputType([Microsoft.Azure.PowerShell.Cmdlets.EventHub.Models.Api202201Preview.IAuthorizationRule])]
    [CmdletBinding(DefaultParameterSetName = 'SetExpandedNamespace', PositionalBinding = $false, SupportsShouldProcess, ConfirmImpact = 'Medium')]
	param(
        [Parameter(ParameterSetName = 'SetExpandedEntity', HelpMessage = "The name of the Authorization Rule")]
        [Parameter(ParameterSetName = 'SetExpandedNamespace', HelpMessage = "The name of the Authorization Rule")]
        [Alias('AuthorizationRuleName')]
        [Microsoft.Azure.PowerShell.Cmdlets.EventHub.Category('Path')]
        [System.String]
        # The name of the Authorization Rule.
        ${Name},

        [Parameter(ParameterSetName = 'SetExpandedEntity', Mandatory, HelpMessage = "The name of the EventHub entity.")]
        [Microsoft.Azure.PowerShell.Cmdlets.EventHub.Category('Path')]
        [System.String]
        # The name of the EventHub entity.
        ${EventHubName},

        [Parameter(ParameterSetName = 'SetExpandedNamespace', Mandatory, HelpMessage = "The name of EventHub namespace")]
        [Parameter(ParameterSetName = 'SetExpandedEntity', Mandatory, HelpMessage = "The name of the EventHub namespace.")]
        [Microsoft.Azure.PowerShell.Cmdlets.EventHub.Category('Path')]
        [System.String]
        # The name of EventHub namespace
        ${NamespaceName},

        [Parameter(ParameterSetName = 'SetExpandedNamespace', Mandatory, HelpMessage = "The name of the resource group. The name is case insensitive.")]
        [Parameter(ParameterSetName = 'SetExpandedEntity', Mandatory, HelpMessage = "The name of the resource group. The name is case insensitive.")]
        [Microsoft.Azure.PowerShell.Cmdlets.EventHub.Category('Path')]
        [System.String]
        # The name of the resource group.
        # The name is case insensitive.
        ${ResourceGroupName},

        [Parameter(ParameterSetName = 'SetExpandedNamespace', HelpMessage = "The ID of the target subscription.")]
        [Parameter(ParameterSetName = 'SetExpandedEntity', HelpMessage = "The ID of the target subscription.")]
        [Microsoft.Azure.PowerShell.Cmdlets.EventHub.Category('Path')]
        [Microsoft.Azure.PowerShell.Cmdlets.EventHub.Runtime.DefaultInfo(Script = '(Get-AzContext).Subscription.Id')]
        [System.String]
        # The ID of the target subscription.
        ${SubscriptionId},

        [Parameter(ParameterSetName = 'SetViaIdentityExpanded', Mandatory, ValueFromPipeline, HelpMessage = "Identity parameter. To construct, see NOTES section for INPUTOBJECT properties and create a hash table.")]
        [Microsoft.Azure.PowerShell.Cmdlets.EventHub.Category('Path')]
        [Microsoft.Azure.PowerShell.Cmdlets.EventHub.Models.IEventHubIdentity]
        # Identity Parameter
        # To construct, see NOTES section for INPUTOBJECT properties and create a hash table.
        ${InputObject},

        [Parameter(Mandatory, HelpMessage = "The rights associated with the rule.")]
        [Microsoft.Azure.PowerShell.Cmdlets.EventHub.Category('Body')]
        [Microsoft.Azure.PowerShell.Cmdlets.EventHub.Support.AccessRights[]]
        # The rights associated with the rule.
        ${Rights},
		
        [Parameter(HelpMessage = "The credentials, account, tenant, and subscription used for communication with Azure.")]
        [Alias('AzureRMContext', 'AzureCredential')]
        [ValidateNotNull()]
        [Microsoft.Azure.PowerShell.Cmdlets.EventHub.Category('Azure')]
        [System.Management.Automation.PSObject]
        # The credentials, account, tenant, and subscription used for communication with Azure.
        ${DefaultProfile},

        [Parameter(HelpMessage = "Run the command as a job")]
        [Microsoft.Azure.PowerShell.Cmdlets.EventHub.Category('Runtime')]
        [System.Management.Automation.SwitchParameter]
        # Run the command as a job
        ${AsJob},

        [Parameter(DontShow)]
        [Microsoft.Azure.PowerShell.Cmdlets.EventHub.Category('Runtime')]
        [System.Management.Automation.SwitchParameter]
        # Wait for .NET debugger to attach
        ${Break},

        [Parameter(DontShow)]
        [ValidateNotNull()]
        [Microsoft.Azure.PowerShell.Cmdlets.EventHub.Category('Runtime')]
        [Microsoft.Azure.PowerShell.Cmdlets.EventHub.Runtime.SendAsyncStep[]]
        # SendAsync Pipeline Steps to be appended to the front of the pipeline
        ${HttpPipelineAppend},

        [Parameter(DontShow)]
        [ValidateNotNull()]
        [Microsoft.Azure.PowerShell.Cmdlets.EventHub.Category('Runtime')]
        [Microsoft.Azure.PowerShell.Cmdlets.EventHub.Runtime.SendAsyncStep[]]
        # SendAsync Pipeline Steps to be prepended to the front of the pipeline
        ${HttpPipelinePrepend},

        [Parameter(HelpMessage = "Run the command asynchronously")]
        [Microsoft.Azure.PowerShell.Cmdlets.EventHub.Category('Runtime')]
        [System.Management.Automation.SwitchParameter]
        # Run the command asynchronously
        ${NoWait},

        [Parameter(DontShow)]
        [Microsoft.Azure.PowerShell.Cmdlets.EventHub.Category('Runtime')]
        [System.Uri]
        # The URI for the proxy server to use
        ${Proxy},

        [Parameter(DontShow)]
        [ValidateNotNull()]
        [Microsoft.Azure.PowerShell.Cmdlets.EventHub.Category('Runtime')]
        [System.Management.Automation.PSCredential]
        # Credentials for a proxy server to use for the remote call
        ${ProxyCredential},

        [Parameter(DontShow)]
        [Microsoft.Azure.PowerShell.Cmdlets.EventHub.Category('Runtime')]
        [System.Management.Automation.SwitchParameter]
        # Use the default credentials for the proxy
        ${ProxyUseDefaultCredentials}
	)
	process{
		try{
            $hasRights = $PSBoundParameters.Remove('Rights')
            $hasAsJob = $PSBoundParameters.Remove('AsJob')
            $null = $PSBoundParameters.Remove('WhatIf')
            $null = $PSBoundParameters.Remove('Confirm')

            if ($PSCmdlet.ParameterSetName -eq 'SetExpandedNamespace'){
                $authRule = Az.EventHub.private\Get-AzEventHubNamespaceAuthorizationRule_Get @PSBoundParameters
            }
            
            elseif($PSCmdlet.ParameterSetName -eq 'SetExpandedEntity'){
                $authRule = Az.EventHub.private\Get-AzEventHubAuthorizationRule_Get @PSBoundParameters
            }

            elseif ($PSCmdlet.ParameterSetName -eq 'SetViaIdentityExpanded'){
                if($InputObject.Id -ne $null){
                    $ResourceHashTable = ParseResourceId -ResourceId $InputObject.Id
                }
                else{
                    $ResourceHashTable = ParseResourceId -ResourceId $InputObject
                }
                if ($ResourceHashTable['EventHubName'] -ne $null){
                    $authRule = Az.EventHub.private\Get-AzEventHubAuthorizationRule_GetViaIdentity @PSBoundParameters
                }
                elseif ($ResourceHashTable['NamespaceName'] -ne $null){
                    $authRule = Az.EventHub.private\Get-AzEventHubNamespaceAuthorizationRule_GetViaIdentity @PSBoundParameters
                }
                else{
                    throw 'Invalid -InputObject. Please Check ResourceId'
                }
            }
            
            # 2. PUT
            $null = $PSBoundParameters.Remove('InputObject')
            $null = $PSBoundParameters.Remove('ResourceGroupName')
            $null = $PSBoundParameters.Remove('NamespaceName')
            $null = $PSBoundParameters.Remove('EventHubName')
            $null = $PSBoundParameters.Remove('Name')
            $null = $PSBoundParameters.Remove('SubscriptionId')

            if ($hasRights) {
                $authRule.Rights = $Rights
            }
            if ($hasAsJob) {
                $PSBoundParameters.Add('AsJob', $true)
            }

            if ($PSCmdlet.ParameterSetName -eq 'SetExpandedNamespace'){
                if ($PSCmdlet.ShouldProcess("EventHub Namespace Authorization Rule $($authRule.Name)", "Create or update")) {
                    Az.EventHub.private\New-AzEventHubNamespaceAuthorizationRule_CreateViaIdentity -InputObject $authRule -Parameter $authRule @PSBoundParameters
                }
            }

            elseif ($PSCmdlet.ParameterSetName -eq 'SetExpandedEntity'){
                if ($PSCmdlet.ShouldProcess("EventHub Entity Authorization Rule $($authRule.Name)", "Create or update")) {
                    Az.EventHub.private\New-AzEventHubAuthorizationRule_CreateViaIdentity -InputObject $authRule -Parameter $authRule @PSBoundParameters
                }
            }

            
            elseif ($PSCmdlet.ParameterSetName -eq 'SetViaIdentityExpanded'){
                
                if ($ResourceHashTable['EventHubName'] -ne $null){
                    if ($PSCmdlet.ShouldProcess("EventHub Entity Authorization Rule $($ResourceHashTable['AuthorizationRuleName'])", "Create or update")) {
                        Az.EventHub.private\New-AzEventHubAuthorizationRule_CreateViaIdentity -InputObject $authRule -Parameter $authRule @PSBoundParameters
                    }
                }
                elseif ($ResourceHashTable['NamespaceName'] -ne $null){
                    if ($PSCmdlet.ShouldProcess("EventHub Namespace Authorization Rule $($ResourceHashTable['AuthorizationRuleName'])", "Create or update")) {
                        Az.EventHub.private\New-AzEventHubNamespaceAuthorizationRule_CreateViaIdentity -InputObject $authRule -Parameter $authRule @PSBoundParameters
                    }
                }
                else{
                    throw 'Invalid -InputObject'
                }

            }
		}
		catch{
			throw
		}
	}
}

# SIG # Begin signature block
# MIInqQYJKoZIhvcNAQcCoIInmjCCJ5YCAQExDzANBglghkgBZQMEAgEFADB5Bgor
# BgEEAYI3AgEEoGswaTA0BgorBgEEAYI3AgEeMCYCAwEAAAQQH8w7YFlLCE63JNLG
# KX7zUQIBAAIBAAIBAAIBAAIBADAxMA0GCWCGSAFlAwQCAQUABCDDsu9uelZ30A/e
# nISAV860mPJiNWXlRzwg+lSCHad1dqCCDYEwggX/MIID56ADAgECAhMzAAACzI61
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
# BgEEAYI3AgELMQ4wDAYKKwYBBAGCNwIBFTAvBgkqhkiG9w0BCQQxIgQg674hZ4l6
# l1PZtx3TK27nh7kcw9rUztZdbZPh2hKys1kwQgYKKwYBBAGCNwIBDDE0MDKgFIAS
# AE0AaQBjAHIAbwBzAG8AZgB0oRqAGGh0dHA6Ly93d3cubWljcm9zb2Z0LmNvbTAN
# BgkqhkiG9w0BAQEFAASCAQA8DcQbmxKKFwfWzUa9fotCVqQeByJBdI9FNOIOH9ri
# 9Q0BrgAX4bzw/nOlkh+v+IhH0Ha7/a9LKwwNFOrcqYkGAHXr5AS9ssRvR9Z3etxO
# d91ehA6B0aOV9/N9P6V+JWLyYypEGKMy+LEgjjT1JppYvvkiIKb89WOMOwxwUpue
# h+LUERT7kIkmllPkJxK1wo2BC1EpTLQUfrFjNzOoihk4Cs32MHAqKksLTRrAJ3oI
# bRKnf2sng86DpiWih0NUko4mKth0vhOxReJ/sBtQUVFj4i2HNzpduhV7tzGq2W0q
# sH0ch9FMJpPP+4aWHO9HhCfOJIxMl9cG1uvNIJm0GyXwoYIXCDCCFwQGCisGAQQB
# gjcDAwExghb0MIIW8AYJKoZIhvcNAQcCoIIW4TCCFt0CAQMxDzANBglghkgBZQME
# AgEFADCCAVQGCyqGSIb3DQEJEAEEoIIBQwSCAT8wggE7AgEBBgorBgEEAYRZCgMB
# MDEwDQYJYIZIAWUDBAIBBQAEIOoJNOKmWlfD52Nd+6VYss5FAO7mw3yDWxPwCRbT
# cxQCAgZjTsx+JxIYEjIwMjIxMDI4MDcyNjU1LjI0WjAEgAIB9KCB1KSB0TCBzjEL
# MAkGA1UEBhMCVVMxEzARBgNVBAgTCldhc2hpbmd0b24xEDAOBgNVBAcTB1JlZG1v
# bmQxHjAcBgNVBAoTFU1pY3Jvc29mdCBDb3Jwb3JhdGlvbjEpMCcGA1UECxMgTWlj
# cm9zb2Z0IE9wZXJhdGlvbnMgUHVlcnRvIFJpY28xJjAkBgNVBAsTHVRoYWxlcyBU
# U1MgRVNOOkY3N0YtRTM1Ni01QkFFMSUwIwYDVQQDExxNaWNyb3NvZnQgVGltZS1T
# dGFtcCBTZXJ2aWNloIIRXDCCBxAwggT4oAMCAQICEzMAAAGqpTGbC8uyCA4AAQAA
# AaowDQYJKoZIhvcNAQELBQAwfDELMAkGA1UEBhMCVVMxEzARBgNVBAgTCldhc2hp
# bmd0b24xEDAOBgNVBAcTB1JlZG1vbmQxHjAcBgNVBAoTFU1pY3Jvc29mdCBDb3Jw
# b3JhdGlvbjEmMCQGA1UEAxMdTWljcm9zb2Z0IFRpbWUtU3RhbXAgUENBIDIwMTAw
# HhcNMjIwMzAyMTg1MTI2WhcNMjMwNTExMTg1MTI2WjCBzjELMAkGA1UEBhMCVVMx
# EzARBgNVBAgTCldhc2hpbmd0b24xEDAOBgNVBAcTB1JlZG1vbmQxHjAcBgNVBAoT
# FU1pY3Jvc29mdCBDb3Jwb3JhdGlvbjEpMCcGA1UECxMgTWljcm9zb2Z0IE9wZXJh
# dGlvbnMgUHVlcnRvIFJpY28xJjAkBgNVBAsTHVRoYWxlcyBUU1MgRVNOOkY3N0Yt
# RTM1Ni01QkFFMSUwIwYDVQQDExxNaWNyb3NvZnQgVGltZS1TdGFtcCBTZXJ2aWNl
# MIICIjANBgkqhkiG9w0BAQEFAAOCAg8AMIICCgKCAgEAoE/scrnVtYd/4UNKH07t
# jKtC2Q0y90fMeJrO850j084aPIkhiuzVY4yZIKnej+a+y4+cVI/lzR0J4G5Srq7o
# nfQzzVlo04/9ptmtPBitg343mdK2s4Z0K1EG6bvqHLtOvcBkNQCsvC+GwaVeEuUN
# TXCKhrEz4FXAI0jsuZNpgqqObnyESCxi0ogeTn0vM6cjhp6ds8sE/9VhiMjprgoh
# y6fQRkSsC6S3k8L+YpRo6mFQwZibQ/F+lj0GQbmw99zMXIh8DXcstFLiwaFtStwz
# ngS8TYWVYFBomjt+spbsJWMhMsRfgTaXHBAb8y5n7XANiD044StPmH7rN5yPrt56
# fDF5Sho4Rsq2JTFolRifJArEJZOQ11ZFdMpKYjHHS1uw/mKtaOpe9Pq3/N4krDTk
# 1jyE9Pnq9bbSrQNgrY2144IMPRQPpk0AUtXzsY6SXR4GpdxOgVV14nDA5MTpoDhG
# pig2vZBQ8EhTokSJQYGz1zioLmYEdNjjpVpH+h1oUMtzFAjg4+SflqX8g+x3z+to
# OYx8qKTrrFw2Hao3jLK1gze6IN6dfmp4V3Hel2LjelgAU39LX/dVE2T78ZFVRRhZ
# gGMNlKrGyWJ0TyGzELsryot+Y2hpDZoCy7XeHV9pMxJkgRXGizPVv3Ih5ea0zo2W
# uNXd63BLsldjAaEcx1VgQvUCAwEAAaOCATYwggEyMB0GA1UdDgQWBBQ/mhS8U4cu
# 2F93RbPeEa2dBUaknjAfBgNVHSMEGDAWgBSfpxVdAF5iXYP05dJlpxtTNRnpcjBf
# BgNVHR8EWDBWMFSgUqBQhk5odHRwOi8vd3d3Lm1pY3Jvc29mdC5jb20vcGtpb3Bz
# L2NybC9NaWNyb3NvZnQlMjBUaW1lLVN0YW1wJTIwUENBJTIwMjAxMCgxKS5jcmww
# bAYIKwYBBQUHAQEEYDBeMFwGCCsGAQUFBzAChlBodHRwOi8vd3d3Lm1pY3Jvc29m
# dC5jb20vcGtpb3BzL2NlcnRzL01pY3Jvc29mdCUyMFRpbWUtU3RhbXAlMjBQQ0El
# MjAyMDEwKDEpLmNydDAMBgNVHRMBAf8EAjAAMBMGA1UdJQQMMAoGCCsGAQUFBwMI
# MA0GCSqGSIb3DQEBCwUAA4ICAQDfDIBNkEUQGiCtzAezjMjupfbLSNsoIjpmJ4YA
# hH3pGIyuNm9Ybf1g8D8Uva+EZIK07t5reIGXCGFPIkQ97Eu6BPiMHhbSuV04s/ls
# RzTPDGz021MVLxSXbNsnuPPlbFKeFIex9pUVSntLoHZrVuMqZYij9K93dbVXeZwh
# jOFukshRWU/cJtMkQT5wLeFf4mCCdJhERPKj6YjsfP8oxYVpFYFRgjiDQGvCJXaV
# iorJ6SM2nquPtvyXo6FuBf8k/RvM3G/qKjRjiI2UjPP890iH8TamPelc+JAk9GUS
# QySxF5wTxWcXKqFHh9v8XpznLBjj6YSmyEgCDZhRezAWqpsr0W/5TxhhyVg++Er/
# BFmz7/lq4rgUz5BOPLCPQLmuavwzOKqZQaAC7BlBjIdEKimdV2Vo7/HFJkJ9plHv
# DsHc4ESXyP5Wih+zUp+r0CaZABZk6O3gOc2Tk2fFOE++NBW45T/L4dMSvCoP/ApE
# KXQAndQ9Mnw89in6NsReQqagWFTgkZ6vl5qPbadfX2m6M1kqqpqu3jIuM1Q6SpaN
# WTgoel1hEZwkxVeQqRACKWNSf1wdHA24/P9O7tiZ+BFdY3ge8JxPabVAAOKc5k+w
# 7m/mP9sTHDRaYWtbYK0MQCmcKWaIApyEWvTFIoTkRP4DK5stql6MQ2v2+3tBc2rp
# o/VdZzCCB3EwggVZoAMCAQICEzMAAAAVxedrngKbSZkAAAAAABUwDQYJKoZIhvcN
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
# JjAkBgNVBAsTHVRoYWxlcyBUU1MgRVNOOkY3N0YtRTM1Ni01QkFFMSUwIwYDVQQD
# ExxNaWNyb3NvZnQgVGltZS1TdGFtcCBTZXJ2aWNloiMKAQEwBwYFKw4DAhoDFQDg
# bSbQnh4CWWNw/+O86/3+mb/rxqCBgzCBgKR+MHwxCzAJBgNVBAYTAlVTMRMwEQYD
# VQQIEwpXYXNoaW5ndG9uMRAwDgYDVQQHEwdSZWRtb25kMR4wHAYDVQQKExVNaWNy
# b3NvZnQgQ29ycG9yYXRpb24xJjAkBgNVBAMTHU1pY3Jvc29mdCBUaW1lLVN0YW1w
# IFBDQSAyMDEwMA0GCSqGSIb3DQEBBQUAAgUA5wXQ3zAiGA8yMDIyMTAyODA3NTQw
# N1oYDzIwMjIxMDI5MDc1NDA3WjB0MDoGCisGAQQBhFkKBAExLDAqMAoCBQDnBdDf
# AgEAMAcCAQACAgudMAcCAQACAhG9MAoCBQDnByJfAgEAMDYGCisGAQQBhFkKBAIx
# KDAmMAwGCisGAQQBhFkKAwKgCjAIAgEAAgMHoSChCjAIAgEAAgMBhqAwDQYJKoZI
# hvcNAQEFBQADgYEAEEhAzUcaXz+upvWGMQp8nTk25aGPtAbNC0KnQMqCqDAVBQee
# VJ7KYLToVp6B5JcTA1PakifxHqla0o6cTfBIt4GS+ezXovycRS1OYjgdYh/JiHwN
# /v6NG3rXLBuG/w6TAGSuWRgzk+NmV6aG+9+gQdpKiNZemNW0OmvIkeRAoY0xggQN
# MIIECQIBATCBkzB8MQswCQYDVQQGEwJVUzETMBEGA1UECBMKV2FzaGluZ3RvbjEQ
# MA4GA1UEBxMHUmVkbW9uZDEeMBwGA1UEChMVTWljcm9zb2Z0IENvcnBvcmF0aW9u
# MSYwJAYDVQQDEx1NaWNyb3NvZnQgVGltZS1TdGFtcCBQQ0EgMjAxMAITMwAAAaql
# MZsLy7IIDgABAAABqjANBglghkgBZQMEAgEFAKCCAUowGgYJKoZIhvcNAQkDMQ0G
# CyqGSIb3DQEJEAEEMC8GCSqGSIb3DQEJBDEiBCCBpRuH5GdS4U8oHGe1d2tEgNbu
# 4MhG3nTbch09qrVM8DCB+gYLKoZIhvcNAQkQAi8xgeowgecwgeQwgb0EIFa1AkMc
# WrwR4HPdNe6AKpGFIj8kJlsBNgQjBMbxsx7AMIGYMIGApH4wfDELMAkGA1UEBhMC
# VVMxEzARBgNVBAgTCldhc2hpbmd0b24xEDAOBgNVBAcTB1JlZG1vbmQxHjAcBgNV
# BAoTFU1pY3Jvc29mdCBDb3Jwb3JhdGlvbjEmMCQGA1UEAxMdTWljcm9zb2Z0IFRp
# bWUtU3RhbXAgUENBIDIwMTACEzMAAAGqpTGbC8uyCA4AAQAAAaowIgQgchklbhS/
# +Bw3dsqrniYrlq2MJlV52Si3sv/Hvv4TPTowDQYJKoZIhvcNAQELBQAEggIAW+UX
# EriKSZWJvr4J4WnOxoo2pbvpkD0fCi8eJ0TWm0mf49sMj4OBZrWDTnFcH7clR4Ci
# 7yfswVHp6q870iylZjApw4ND+kEKLHBWn8RJ+X3ZtM5p4TBBFW2NHqms2TNoOBtY
# aWtwny6WC8khYL0/SXs/VYoVmLlpJNmW7MJfxQ7ZjpLavjTu7OvTbuRW2D5OCkhq
# haHeopZvNsz1JXD4Hu65vtWQ6jt/CBPutn/mCKXbOwyt61kxtabWENsSIR1H/Sid
# a/C3FhZ0woTIvBMLXWtbbd1DhvgnPjO0LlKM8e0Ab3Dtfwbu9Pj5WXPh2xfN9zhk
# zaROoa5jfJAJd4KV3XqrN1inXin8M70vs1Jt5vDctXcTNxaB8jVNnRTGi8hkxEOF
# u5XCevxQHKdbOnQk42W/637H3ViIOojevmTzLGxRZuTNzyAQJvRgjY3l9oHsK854
# FwhFTdt1AjH5rzGKVETM9sGwkfPlBj0HFFGCbceyRDpvJgmzDWtpkQ2IGH2f73td
# qvXBgo0mEJGBZUbmFKuV9EbIDWxZJkR3IgTA8AHTLMsX08dY52lpsD7ses7Zs3zb
# Oaf7ToQVkfaE1OPoIrK+0iwIOmBdTwqMKsuHT+R7/DKIjv2Oj67QWqF3jztoVS5f
# BKk2LUqDmR4lVdl556m5we1iTLOkDqw+BOgA6n8=
# SIG # End signature block
