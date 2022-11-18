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
Updates a ServiceBus Rule
.Description
Updates a ServiceBus Rule
#>

function Set-AzServiceBusRule{
	[OutputType([Microsoft.Azure.PowerShell.Cmdlets.ServiceBus.Models.Api202201Preview.IRule])]
    [CmdletBinding(DefaultParameterSetName = 'SetExpanded', PositionalBinding = $false, SupportsShouldProcess, ConfirmImpact = 'Medium')]
	param(
		[Parameter(ParameterSetName = 'SetExpanded', Mandatory, HelpMessage = "The name of the Rule.")]
        [Alias('RuleName')]
        [Microsoft.Azure.PowerShell.Cmdlets.ServiceBus.Category('Path')]
        [System.String]
        # The name of the Rule.
        ${Name},

        [Parameter(ParameterSetName = 'SetExpanded', Mandatory, HelpMessage = "The name of the Topic.")]
        [Microsoft.Azure.PowerShell.Cmdlets.ServiceBus.Category('Path')]
        [System.String]
        # The name of the Topic.
        ${TopicName},

        [Parameter(ParameterSetName = 'SetExpanded', Mandatory, HelpMessage = "The name of the SubscriptionName.")]
        [Microsoft.Azure.PowerShell.Cmdlets.ServiceBus.Category('Path')]
        [System.String]
        # The name of the SubscriptionName.
        ${SubscriptionName},

        [Parameter(ParameterSetName = 'SetExpanded', Mandatory, HelpMessage = "The name of ServiceBus namespace")]
        [Microsoft.Azure.PowerShell.Cmdlets.ServiceBus.Category('Path')]
        [System.String]
        # The name of ServiceBus namespace
        ${NamespaceName},

        [Parameter(ParameterSetName = 'SetExpanded', Mandatory, HelpMessage = "The name of the resource group. The name is case insensitive.")]
        [Microsoft.Azure.PowerShell.Cmdlets.ServiceBus.Category('Path')]
        [System.String]
        # The name of the resource group.
        # The name is case insensitive.
        ${ResourceGroupName},

        [Parameter(ParameterSetName = 'SetExpanded', HelpMessage = "The ID of the target subscription.")]
        [Microsoft.Azure.PowerShell.Cmdlets.ServiceBus.Category('Path')]
        [Microsoft.Azure.PowerShell.Cmdlets.ServiceBus.Runtime.DefaultInfo(Script = '(Get-AzContext).Subscription.Id')]
        [System.String]
        # The ID of the target subscription.
        ${SubscriptionId},

        [Parameter(ParameterSetName = 'SetViaIdentityExpanded', Mandatory, ValueFromPipeline, HelpMessage = "Identity parameter. To construct, see NOTES section for INPUTOBJECT properties and create a hash table.")]
        [Microsoft.Azure.PowerShell.Cmdlets.ServiceBus.Category('Path')]
        [Microsoft.Azure.PowerShell.Cmdlets.ServiceBus.Models.IServiceBusIdentity]
        # Identity Parameter
        # To construct, see NOTES section for INPUTOBJECT properties and create a hash table.
        ${InputObject},

        [Parameter(HelpMessage = "SQL expression. e.g. MyProperty='ABC'")]
		[Microsoft.Azure.PowerShell.Cmdlets.ServiceBus.Category('Body')]
		[System.String]
		# SQL expression. e.g. MyProperty='ABC'
		${SqlExpression},

        [Parameter(HelpMessage = "Value that indicates whether the rule action requires preprocessing.")]
        [Microsoft.Azure.PowerShell.Cmdlets.ServiceBus.Category('Body')]
        [System.Management.Automation.SwitchParameter]
        # Value that indicates whether the rule action requires preprocessing.
        ${SqlFilterRequiresPreprocessing},

        [Parameter(HelpMessage = "Content type of the message.")]
		[Microsoft.Azure.PowerShell.Cmdlets.ServiceBus.Category('Body')]
		[System.String]
		# Content type of the message.
		${ContentType},

        [Parameter(HelpMessage = "Identifier of the correlation.")]
		[Microsoft.Azure.PowerShell.Cmdlets.ServiceBus.Category('Body')]
		[System.String]
		# Identifier of the correlation.
		${CorrelationId},

        [Parameter(HelpMessage = "Application specific label.")]
		[Microsoft.Azure.PowerShell.Cmdlets.ServiceBus.Category('Body')]
		[System.String]
		# Application specific label.
		${Label},

        [Parameter(HelpMessage = "Identifier of the message.")]
		[Microsoft.Azure.PowerShell.Cmdlets.ServiceBus.Category('Body')]
		[System.String]
		# Identifier of the message.
		${MessageId},

        [Parameter(HelpMessage = "dictionary object for custom filters")]
		[Microsoft.Azure.PowerShell.Cmdlets.ServiceBus.Category('Body')]
		[System.Collections.Hashtable]
		# dictionary object for custom filters
		${CorrelationFilterProperty},

        [Parameter(HelpMessage = "Address of the queue to reply to.")]
		[Microsoft.Azure.PowerShell.Cmdlets.ServiceBus.Category('Body')]
		[System.String]
		# Address of the queue to reply to.
		${ReplyTo},

        [Parameter(HelpMessage = "Session identifier to reply to.")]
		[Microsoft.Azure.PowerShell.Cmdlets.ServiceBus.Category('Body')]
		[System.String]
		# Session identifier to reply to.
		${ReplyToSessionId},

        [Parameter(HelpMessage = "Value that indicates whether the rule action requires preprocessing.")]
        [Microsoft.Azure.PowerShell.Cmdlets.ServiceBus.Category('Body')]
        [System.Management.Automation.SwitchParameter]
        # Value that indicates whether the rule action requires preprocessing.
        ${CorrelationFilterRequiresPreprocessing},

        [Parameter(HelpMessage = "Session identifier.")]
		[Microsoft.Azure.PowerShell.Cmdlets.ServiceBus.Category('Body')]
		[System.String]
		# Session identifier.
		${SessionId},

        [Parameter(HelpMessage = "Address to send to.")]
        [Microsoft.Azure.PowerShell.Cmdlets.ServiceBus.Category('Body')]
        [System.String]
        # Address to send to.
        ${To},

        [Parameter(HelpMessage = "Filter type that is evaluated against a BrokeredMessage.")]
        [Microsoft.Azure.PowerShell.Cmdlets.ServiceBus.Category('Body')]
        [Microsoft.Azure.PowerShell.Cmdlets.ServiceBus.Support.FilterType]
        # Filter type that is evaluated against a BrokeredMessage.
        ${FilterType},

        [Parameter(HelpMessage = "Value that indicates whether the rule action requires preprocessing.")]
        [Microsoft.Azure.PowerShell.Cmdlets.ServiceBus.Category('Body')]
        [System.Management.Automation.SwitchParameter]
        # Value that indicates whether the rule action requires preprocessing. 
        ${ActionRequiresPreprocessing},

        [Parameter(HelpMessage = "SQL expression. e.g. MyProperty='ABC'")]
		[Microsoft.Azure.PowerShell.Cmdlets.ServiceBus.Category('Body')]
		[System.String]
		# SQL expression. e.g. MyProperty='ABC'
		${ActionSqlExpression},

        [Parameter(HelpMessage = "The credentials, account, tenant, and subscription used for communication with Azure.")]
        [Alias('AzureRMContext', 'AzureCredential')]
        [ValidateNotNull()]
        [Microsoft.Azure.PowerShell.Cmdlets.ServiceBus.Category('Azure')]
        [System.Management.Automation.PSObject]
        # The credentials, account, tenant, and subscription used for communication with Azure.
        ${DefaultProfile},

        [Parameter(HelpMessage = "Run the command as a job")]
        [Microsoft.Azure.PowerShell.Cmdlets.ServiceBus.Category('Runtime')]
        [System.Management.Automation.SwitchParameter]
        # Run the command as a job
        ${AsJob},

        [Parameter(DontShow)]
        [Microsoft.Azure.PowerShell.Cmdlets.ServiceBus.Category('Runtime')]
        [System.Management.Automation.SwitchParameter]
        # Wait for .NET debugger to attach
        ${Break},

        [Parameter(DontShow)]
        [ValidateNotNull()]
        [Microsoft.Azure.PowerShell.Cmdlets.ServiceBus.Category('Runtime')]
        [Microsoft.Azure.PowerShell.Cmdlets.ServiceBus.Runtime.SendAsyncStep[]]
        # SendAsync Pipeline Steps to be appended to the front of the pipeline
        ${HttpPipelineAppend},

        [Parameter(DontShow)]
        [ValidateNotNull()]
        [Microsoft.Azure.PowerShell.Cmdlets.ServiceBus.Category('Runtime')]
        [Microsoft.Azure.PowerShell.Cmdlets.ServiceBus.Runtime.SendAsyncStep[]]
        # SendAsync Pipeline Steps to be prepended to the front of the pipeline
        ${HttpPipelinePrepend},

        [Parameter(HelpMessage = "Run the command asynchronously")]
        [Microsoft.Azure.PowerShell.Cmdlets.ServiceBus.Category('Runtime')]
        [System.Management.Automation.SwitchParameter]
        # Run the command asynchronously
        ${NoWait},

        [Parameter(DontShow)]
        [Microsoft.Azure.PowerShell.Cmdlets.ServiceBus.Category('Runtime')]
        [System.Uri]
        # The URI for the proxy server to use
        ${Proxy},

        [Parameter(DontShow)]
        [ValidateNotNull()]
        [Microsoft.Azure.PowerShell.Cmdlets.ServiceBus.Category('Runtime')]
        [System.Management.Automation.PSCredential]
        # Credentials for a proxy server to use for the remote call
        ${ProxyCredential},

        [Parameter(DontShow)]
        [Microsoft.Azure.PowerShell.Cmdlets.ServiceBus.Category('Runtime')]
        [System.Management.Automation.SwitchParameter]
        # Use the default credentials for the proxy
        ${ProxyUseDefaultCredentials}
	)
	process{
		try{
            $hasSqlExpression = $PSBoundParameters.Remove('SqlExpression')
            $hasSqlFilterRequiresPreprocessing = $PSBoundParameters.Remove('SqlFilterRequiresPreprocessing')
            $hasContentType = $PSBoundParameters.Remove('ContentType')
            $hasCorrelationId = $PSBoundParameters.Remove('CorrelationId')
            $hasLabel = $PSBoundParameters.Remove('Label')
            $hasMessageId = $PSBoundParameters.Remove('MessageId')
            $hasCorrelationFilterProperty = $PSBoundParameters.Remove('CorrelationFilterProperty')
            $hasReplyTo = $PSBoundParameters.Remove('ReplyTo')
            $hasReplyToSessionId = $PSBoundParameters.Remove('ReplyToSessionId')
            $hasCorrelationFilterRequiresPreprocessing = $PSBoundParameters.Remove('CorrelationFilterRequiresPreprocessing')
            $hasSessionId = $PSBoundParameters.Remove('SessionId')
            $hasTo = $PSBoundParameters.Remove('To')
            $hasFilterType = $PSBoundParameters.Remove('FilterType')
            $hasActionSqlExpression = $PSBoundParameters.Remove('ActionSqlExpression')
            $hasActionRequiresPreprocessing = $PSBoundParameters.Remove('ActionRequiresPreprocessing')

            $rule = Get-AzServiceBusRule @PSBoundParameters

            # 2. PUT
            $null = $PSBoundParameters.Remove('InputObject')
            $null = $PSBoundParameters.Remove('ResourceGroupName')
            $null = $PSBoundParameters.Remove('NamespaceName')
            $null = $PSBoundParameters.Remove('TopicName')
            $null = $PSBoundParameters.Remove('SubscriptionName')
            $null = $PSBoundParameters.Remove('Name')
            $null = $PSBoundParameters.Remove('SubscriptionId')

            $hasProperty = $false

            if ($hasSqlExpression) {
                $rule.SqlExpression = $SqlExpression
                $hasProperty = $true
            }
            if ($hasSqlFilterRequiresPreprocessing) {
                $rule.SqlFilterRequiresPreprocessing = $SqlFilterRequiresPreprocessing
                $hasProperty = $true
            }
            if ($hasContentType) {
                $rule.ContentType = $ContentType
                $hasProperty = $true
            }
            if ($hasCorrelationId) {
                $rule.CorrelationId = $CorrelationId
                $hasProperty = $true
            }
            if ($hasLabel) {
                $rule.Label = $Label
                $hasProperty = $true
            }
            if ($hasMessageId) {
                $rule.MessageId = $MessageId
                $hasProperty = $true
            }
            if ($hasCorrelationFilterProperty) {
                $rule.CorrelationFilterProperty = $CorrelationFilterProperty
                $hasProperty = $true
            }
            if ($hasReplyTo) {
                $rule.ReplyTo = $ReplyTo
                $hasProperty = $true
            }
            if ($hasReplyToSessionId) {
                $rule.ReplyToSessionId = $ReplyToSessionId
                $hasProperty = $true
            }
            if ($hasCorrelationFilterRequiresPreprocessing) {
                $rule.CorrelationFilterRequiresPreprocessing = $CorrelationFilterRequiresPreprocessing
                $hasProperty = $true
            }
            if ($hasSessionId) {
                $rule.SessionId = $SessionId
                $hasProperty = $true
            }
            if ($hasTo) {
                $rule.To = $To
                $hasProperty = $true
            }
            if ($hasFilterType) {
                $rule.FilterType = $FilterType
                $hasProperty = $true
            }
            if ($hasActionSqlExpression) {
                $rule.ActionSqlExpression = $ActionSqlExpression
                $hasProperty = $true
            }
            if ($hasActionRequiresPreprocessing) {
                $rule.ActionRequiresPreprocessing = $ActionRequiresPreprocessing
                $hasProperty = $true
            }

            if (($hasProperty -eq $false) -and ($PSCmdlet.ParameterSetName -eq 'SetViaIdentityExpanded')){
                throw 'Please specify the property you want to update on the -InputObject. Refer https://go.microsoft.com/fwlink/?linkid=2204584#behavior-of--inputobject for example.'
            }

            if ($hasAsJob) {
                $PSBoundParameters.Add('AsJob', $true)
            }

            if ($PSCmdlet.ShouldProcess("ServiceBus Rule $($rule.Name)", "Create or update")) {
                Az.ServiceBus.private\New-AzServiceBusRule_CreateViaIdentity -InputObject $rule -Parameter $rule @PSBoundParameters
            }
		}
		catch{
			throw
		}
	}
}
# SIG # Begin signature block
# MIInzAYJKoZIhvcNAQcCoIInvTCCJ7kCAQExDzANBglghkgBZQMEAgEFADB5Bgor
# BgEEAYI3AgEEoGswaTA0BgorBgEEAYI3AgEeMCYCAwEAAAQQH8w7YFlLCE63JNLG
# KX7zUQIBAAIBAAIBAAIBAAIBADAxMA0GCWCGSAFlAwQCAQUABCDuu+BebP24fQVJ
# vsf4h1PS8JLIaM7KHhJLhF2kBm3S4qCCDYEwggX/MIID56ADAgECAhMzAAACzI61
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
# BgEEAYI3AgELMQ4wDAYKKwYBBAGCNwIBFTAvBgkqhkiG9w0BCQQxIgQg3jHLpye+
# LEomNv858FNhUYbK/rPiR2mnymtuemRfaPgwQgYKKwYBBAGCNwIBDDE0MDKgFIAS
# AE0AaQBjAHIAbwBzAG8AZgB0oRqAGGh0dHA6Ly93d3cubWljcm9zb2Z0LmNvbTAN
# BgkqhkiG9w0BAQEFAASCAQBq2zfkC/4Q60laQrDojtvNEXsY/iF6u0hKBnjsaV2U
# Hs6KAaM7m1HzZqEaKdodB0gEPbRQaENa1HeeGfAYXPxDGsCFEU6vJRbx1fPnH5P0
# cu1GNJ9Mjf3xGjoTM5PKJfhFVJ/5xdh2M/gYHI1UiUAxFmQytECxjDgygedCtSq2
# 4qMmRTbGZsUmBzAq1u8tAOKcff4HX4HHJ038uqjhQkM5LGs2xJOrWB2UlTgg9vrn
# RktVEvhIfVpsJzl/I4PztuFbsBnYKWpA1pcLCs1k9wYV06SC4fT5fVnHx9zcpjzd
# qX4oWxbxiG5EKZyAt9RUVxKG1LlLt2qMDOKgj4m1rOYsoYIXKzCCFycGCisGAQQB
# gjcDAwExghcXMIIXEwYJKoZIhvcNAQcCoIIXBDCCFwACAQMxDzANBglghkgBZQME
# AgEFADCCAVgGCyqGSIb3DQEJEAEEoIIBRwSCAUMwggE/AgEBBgorBgEEAYRZCgMB
# MDEwDQYJYIZIAWUDBAIBBQAEIIqANIA7RRexNf0krRUajpcmwmYf1x+GdRir/c3v
# 5LFRAgZjN1G5sNIYEjIwMjIxMDE3MDczNTAyLjc0WjAEgAIB9KCB2KSB1TCB0jEL
# MAkGA1UEBhMCVVMxEzARBgNVBAgTCldhc2hpbmd0b24xEDAOBgNVBAcTB1JlZG1v
# bmQxHjAcBgNVBAoTFU1pY3Jvc29mdCBDb3Jwb3JhdGlvbjEtMCsGA1UECxMkTWlj
# cm9zb2Z0IElyZWxhbmQgT3BlcmF0aW9ucyBMaW1pdGVkMSYwJAYDVQQLEx1UaGFs
# ZXMgVFNTIEVTTjo4RDQxLTRCRjctQjNCNzElMCMGA1UEAxMcTWljcm9zb2Z0IFRp
# bWUtU3RhbXAgU2VydmljZaCCEXswggcnMIIFD6ADAgECAhMzAAABs/4lzikbG4oc
# AAEAAAGzMA0GCSqGSIb3DQEBCwUAMHwxCzAJBgNVBAYTAlVTMRMwEQYDVQQIEwpX
# YXNoaW5ndG9uMRAwDgYDVQQHEwdSZWRtb25kMR4wHAYDVQQKExVNaWNyb3NvZnQg
# Q29ycG9yYXRpb24xJjAkBgNVBAMTHU1pY3Jvc29mdCBUaW1lLVN0YW1wIFBDQSAy
# MDEwMB4XDTIyMDkyMDIwMjIwM1oXDTIzMTIxNDIwMjIwM1owgdIxCzAJBgNVBAYT
# AlVTMRMwEQYDVQQIEwpXYXNoaW5ndG9uMRAwDgYDVQQHEwdSZWRtb25kMR4wHAYD
# VQQKExVNaWNyb3NvZnQgQ29ycG9yYXRpb24xLTArBgNVBAsTJE1pY3Jvc29mdCBJ
# cmVsYW5kIE9wZXJhdGlvbnMgTGltaXRlZDEmMCQGA1UECxMdVGhhbGVzIFRTUyBF
# U046OEQ0MS00QkY3LUIzQjcxJTAjBgNVBAMTHE1pY3Jvc29mdCBUaW1lLVN0YW1w
# IFNlcnZpY2UwggIiMA0GCSqGSIb3DQEBAQUAA4ICDwAwggIKAoICAQC0fA+65hiA
# riywYIKyvY3t4SUqXPQk8G62v+Cm9nruQ2UeqAoBbQm4oDLjHGN9UJR6/95LloRy
# dOZ+Prd++zx6J3Qw28/3VPqvzX10iq9acFNji8pWNLMOd9VWdbFgHcg9hEAhM03S
# w+CiWwusJgAqJ4iQQKr4Q8l8SdDbr5ZO+K3VRL64m7A2ccwpVhGuL+thDY/x8ogl
# F9zGRp2PwIQ8ms36XIQ1qD+nCYDQkl5h1fV7CYFyeJfgGAIGqgLzfDfhKTftExKw
# oBTn8GVdtXIO74HpzlePIJhvxDH9C70QHoq8T1LvozQdyUhW1tVlPGecbCxKDZXt
# +YnHRE/ht8AzZnEl5UGLOLfeCFkeeNfj7FE5KtJJnT+P9TuBg+eGbCeXlJy2msFz
# scU9X4G1m/VUYNWeGrKVqbi+YBcB2vFDTEcbCn36K+qq11VUNTnSTktSZXr4aWZb
# LEglQ6HTHN9CN31ns58urTTqH6X2j67cCdLpF3Cw9ck/vPbuLkAf66lCuiex6ZDb
# tH0eTOcRrTnIfZ8p3DvWpaK8Q34hHW+s3qrQn3G6OOrvv637LJXBkriRc5cBDZ1P
# r0PiSeoyUVKwfpq+dc1lDIlkyw1ZoS3euv/w2v2AYwNAYtIXGLjv1nLX1pP98fOw
# C27ahwG5OotXCfGtnKInro/vQQEko7l5AQIDAQABo4IBSTCCAUUwHQYDVR0OBBYE
# FNAaXcJRZ1IMGIs4SCH/XgXcn8ONMB8GA1UdIwQYMBaAFJ+nFV0AXmJdg/Tl0mWn
# G1M1GelyMF8GA1UdHwRYMFYwVKBSoFCGTmh0dHA6Ly93d3cubWljcm9zb2Z0LmNv
# bS9wa2lvcHMvY3JsL01pY3Jvc29mdCUyMFRpbWUtU3RhbXAlMjBQQ0ElMjAyMDEw
# KDEpLmNybDBsBggrBgEFBQcBAQRgMF4wXAYIKwYBBQUHMAKGUGh0dHA6Ly93d3cu
# bWljcm9zb2Z0LmNvbS9wa2lvcHMvY2VydHMvTWljcm9zb2Z0JTIwVGltZS1TdGFt
# cCUyMFBDQSUyMDIwMTAoMSkuY3J0MAwGA1UdEwEB/wQCMAAwFgYDVR0lAQH/BAww
# CgYIKwYBBQUHAwgwDgYDVR0PAQH/BAQDAgeAMA0GCSqGSIb3DQEBCwUAA4ICAQBa
# hrs3zrAJuMACXxEZiYFltLTSyz5OlWI+d/oQZlCArKhoI/aFzTWrYAqvox7dNxIk
# 81YcbXilji6EzMd/XAnFCYAzkCB/ho7so2FVXTgmvRcepSOvdPzgWRZc9gw7i6VA
# bqP/793uCp7ONdpjtwOpg0JJ3cXiUrHQUm5CqnHAe0wv5rhToc4N/Zn4oxiAnNZG
# c4iRP+h3SghfKffr7NchlEebs5CKPuvKv5+ZDbd94XWkNt+FRIdMD0hPnQoKSkan
# 8YGLAU/+bV2t3vE18iZVaBvY8Fwayp0kG+PpNfYx1Qd8FVH5Z7gDSUSPWs1sKmBS
# g22VpH0PLaTaBXyihUR21qJnKHT9W1Z+5CllAkwPGBtkZUwbb67NwqmN5gA0yVIo
# OHJDfzBugCK/EPgApigRJuDhaTnGTF9HMWrKKXYMTPWknQbrGiX2dyLZd7wuQt0R
# Pe7lEbFQdqbwvgp4xbbfz5GO9ZfVEx81AjvvjOIUhks5H7vsgYVzBngWai15fXH3
# 4GD3J0RY0E/exm/24OLLCyBbjSTTQCbm/iL8YaJka7VrgeEjfd+aDH7xuXBHme3s
# mKQWeA25LzeOGbxEdBB0WpC9sW9a67I+3PCPmrhKmM7VKQ57qugcaQSFAJRd1Ayd
# EjBucalv/YSzFp2iQryHqxFkxZuuI7YQItAQzMJwsDCCB3EwggVZoAMCAQICEzMA
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
# IFRTUyBFU046OEQ0MS00QkY3LUIzQjcxJTAjBgNVBAMTHE1pY3Jvc29mdCBUaW1l
# LVN0YW1wIFNlcnZpY2WiIwoBATAHBgUrDgMCGgMVAHGLROiW3R4SpcJCXiqAldSS
# JA5hoIGDMIGApH4wfDELMAkGA1UEBhMCVVMxEzARBgNVBAgTCldhc2hpbmd0b24x
# EDAOBgNVBAcTB1JlZG1vbmQxHjAcBgNVBAoTFU1pY3Jvc29mdCBDb3Jwb3JhdGlv
# bjEmMCQGA1UEAxMdTWljcm9zb2Z0IFRpbWUtU3RhbXAgUENBIDIwMTAwDQYJKoZI
# hvcNAQEFBQACBQDm9ueXMCIYDzIwMjIxMDE3MDQyNzAzWhgPMjAyMjEwMTgwNDI3
# MDNaMHcwPQYKKwYBBAGEWQoEATEvMC0wCgIFAOb255cCAQAwCgIBAAICB3gCAf8w
# BwIBAAICEv8wCgIFAOb4ORcCAQAwNgYKKwYBBAGEWQoEAjEoMCYwDAYKKwYBBAGE
# WQoDAqAKMAgCAQACAwehIKEKMAgCAQACAwGGoDANBgkqhkiG9w0BAQUFAAOBgQBb
# WiGqplUTjLNk7O+Hr2AWiCcpzudx2QiLNV/+BwyOU9IZTT93WH/QV3TXieuouVBD
# KdJrMQCTxPJt6LFShWE7d/pjrBM3AUDfmrWM/mrvTSWLO3XsOtxMmTSrUV5QElLQ
# ai9DZIfV229kskd30xPluRgRe3kpl/i+aXlRjRBCQTGCBA0wggQJAgEBMIGTMHwx
# CzAJBgNVBAYTAlVTMRMwEQYDVQQIEwpXYXNoaW5ndG9uMRAwDgYDVQQHEwdSZWRt
# b25kMR4wHAYDVQQKExVNaWNyb3NvZnQgQ29ycG9yYXRpb24xJjAkBgNVBAMTHU1p
# Y3Jvc29mdCBUaW1lLVN0YW1wIFBDQSAyMDEwAhMzAAABs/4lzikbG4ocAAEAAAGz
# MA0GCWCGSAFlAwQCAQUAoIIBSjAaBgkqhkiG9w0BCQMxDQYLKoZIhvcNAQkQAQQw
# LwYJKoZIhvcNAQkEMSIEIJA/iz/BHg5heBKq76MJe+G4sJIbl+yNxc6hMW0tQ/GD
# MIH6BgsqhkiG9w0BCRACLzGB6jCB5zCB5DCBvQQghqEz1SoQ0ge2RtMyUGVDNo5P
# 5ZdcyRoeijoZ++pPv0IwgZgwgYCkfjB8MQswCQYDVQQGEwJVUzETMBEGA1UECBMK
# V2FzaGluZ3RvbjEQMA4GA1UEBxMHUmVkbW9uZDEeMBwGA1UEChMVTWljcm9zb2Z0
# IENvcnBvcmF0aW9uMSYwJAYDVQQDEx1NaWNyb3NvZnQgVGltZS1TdGFtcCBQQ0Eg
# MjAxMAITMwAAAbP+Jc4pGxuKHAABAAABszAiBCBRxAm5+Cu0Wg5bvpyjaj+mfgbR
# jF8XG9g70uVkV1WdZzANBgkqhkiG9w0BAQsFAASCAgApHT66p3AamfQJ0edeCsWI
# o0ySRy6gt3YeAIpsPHrxSKTe9Zg7PmvhFl1bNalbqFqPRwnc3FUAHn+Kqm+OJT/b
# tj4TtRVDaYb1MkJuKfJ2BdL8/C39BjbkmdQHqWiXljgGXEf/jUvh4mYW2mhAbsUL
# yQkkgXZhXNWXbifLTToFb//hBk2V58MkftoJgsGAM9aPZsC/AnguQGbPx3Ey2eHp
# h7VACMmLhgNAlyRSWIrUKsiR4XQ2lUwWTMuF8jqwTr6PM318aw0ae1Y7pCQ6DDHZ
# lv82gp6t13VDVx5nIhR56et59axNLRXJwr73HpBM5zUl7hcb31LWAPIhcUdPIULC
# eCUQB4M+7xcjQD4N1eQjWqKEOpvpg5oCh+UPZOM7TKL5rEg04lNIo2oEns3i50IU
# nTZKpVacEI82MQIU1D9klFlFVvFSAQDiUEECeXIymbbyYUpRUIF1wOF1NxwSaBWm
# PPt2Bdi/5zn75u9+dYtbLi3iBIeo789MBiUkoOX0407PJsd1p8U9H6Becis0916y
# +ptIw5+28IBQuZMw5DzYITg0E3rtWwl3RkKITFZNqWebPN43lIcjWlYuQZEN7ZZo
# 7EwKaPIufCqHg0qWfybrjlYGRbu1FxhEHV/g2BUHGGTbDCOd+zXfSuHHfkyCunc3
# 5iJ/ynX6C1sGWvCy3YcK3w==
# SIG # End signature block
