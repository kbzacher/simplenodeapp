﻿function Edit-AzDataProtectionPolicyTagClientObject{
	[OutputType('Microsoft.Azure.PowerShell.Cmdlets.DataProtection.Models.Api20220501.IBackupPolicy')]
    [CmdletBinding(PositionalBinding=$false)]
    [Microsoft.Azure.PowerShell.Cmdlets.DataProtection.Description('Adds or removes schedule tag in an existing backup policy.')]

    param(
        [Parameter(ParameterSetName='updateTag', Mandatory, HelpMessage='Backup Policy Object.')]
        [Parameter(ParameterSetName='RemoveTag', Mandatory, HelpMessage='Backup Policy Object.')]
        [Microsoft.Azure.PowerShell.Cmdlets.DataProtection.Models.Api20220501.IBackupPolicy]
        ${Policy},

        [Parameter(ParameterSetName='updateTag', Mandatory, HelpMessage='Name of the Schedule tag.')]
        [Parameter(ParameterSetName='RemoveTag', Mandatory, HelpMessage='Name of the Schedule tag.')]
        [Microsoft.Azure.PowerShell.Cmdlets.DataProtection.Support.TagName]
        ${Name},

        [Parameter(ParameterSetName='RemoveTag', Mandatory, HelpMessage='Specify whether to remove the tag from the given policy object.')]
        [System.Management.Automation.SwitchParameter]
        ${RemoveRule},

        [Parameter(ParameterSetName='updateTag', Mandatory, HelpMessage='Criterias to be associated with the schedule tag.')]
        [Microsoft.Azure.PowerShell.Cmdlets.DataProtection.Models.Api20220501.IScheduleBasedBackupCriteria[]]
        ${Criteria}
    )

    process{
        # Validate the Criteria

        $clientDatasourceType = GetClientDatasourceType -ServiceDatasourceType $Policy.DatasourceType[0]
        $manifest = LoadManifest -DatasourceType $clientDatasourceType

        if($manifest.policySettings.supportedRetentionTags.Contains($Name.ToString()) -eq $false)
        {
            throw "Selected Retention Tag " + $Name  + " is not applicable for Datasource Type " + $clientDatasourceType
        }

        if($manifest.policySettings.disableCustomRetentionTag -eq $true)
        {
            foreach($criterion in $criteria)
            {
                if($criterion.AbsoluteCriterion -eq $null)
                {
                    throw "Only Absolute Criteria is supported for this policy"
                }
            }
        }

        $parameterSetName = $PsCmdlet.ParameterSetName
        $backupRuleIndex = -1
        foreach($index in (0..$Policy.PolicyRule.Length))
        {
            if($Policy.PolicyRule[$index].ObjectType -eq "AzureBackupRule")
            {
                $backupRuleIndex = $index
            }
        }

        if($backupRuleIndex -ne -1)
        {
            if($parameterSetName -eq "RemoveTag")
            {
                $filteredTags = $Policy.PolicyRule[$backupRuleIndex].Trigger.TaggingCriterion | Where-Object { $_.TagInfoTagName –ne $Name }
                $Policy.PolicyRule[$backupRuleIndex].Trigger.TaggingCriterion = $filteredTags
                return $Policy
            }

            if($parameterSetName -eq "updateTag")
            {
                $tagIndex = -1
                foreach($index in (0..$Policy.PolicyRule[$backupRuleIndex].Trigger.TaggingCriterion.Length))
                {
                    if($Policy.PolicyRule[$backupRuleIndex].Trigger.TaggingCriterion[$index].TagInfoTagName -eq $Name)
                    {
                        $tagIndex = $index
                    }
                }

                if($tagIndex -ne -1)
                {
                    $Policy.PolicyRule[$backupRuleIndex].Trigger.TaggingCriterion[$tagIndex].Criterion = $Criteria
                    return $Policy
                }
                
                if($tagIndex -eq -1)
                {
                    $tagCriteria = [Microsoft.Azure.PowerShell.Cmdlets.DataProtection.Models.Api20220501.TaggingCriteria]::new()
                    $tagCriteria.TaggingPriority = GetTaggingPriority -Name $Name
                    $tagCriteria.Criterion = $Criteria
                    $tagCriteria.TagInfoTagName = $Name

                    $Policy.PolicyRule[$backupRuleIndex].Trigger.TaggingCriterion += $tagCriteria
                    return $Policy
                }
            }
        }
        
    }
}
# SIG # Begin signature block
# MIInzQYJKoZIhvcNAQcCoIInvjCCJ7oCAQExDzANBglghkgBZQMEAgEFADB5Bgor
# BgEEAYI3AgEEoGswaTA0BgorBgEEAYI3AgEeMCYCAwEAAAQQH8w7YFlLCE63JNLG
# KX7zUQIBAAIBAAIBAAIBAAIBADAxMA0GCWCGSAFlAwQCAQUABCD7lYGZWf49KAcR
# FDyI/74AwWsJNO+OeZHKS+CC/K8HDaCCDYEwggX/MIID56ADAgECAhMzAAACzI61
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
# RcBCyZt2WwqASGv9eZ/BvW1taslScxMNelDNMYIZojCCGZ4CAQEwgZUwfjELMAkG
# A1UEBhMCVVMxEzARBgNVBAgTCldhc2hpbmd0b24xEDAOBgNVBAcTB1JlZG1vbmQx
# HjAcBgNVBAoTFU1pY3Jvc29mdCBDb3Jwb3JhdGlvbjEoMCYGA1UEAxMfTWljcm9z
# b2Z0IENvZGUgU2lnbmluZyBQQ0EgMjAxMQITMwAAAsyOtZamvdHJTgAAAAACzDAN
# BglghkgBZQMEAgEFAKCBrjAZBgkqhkiG9w0BCQMxDAYKKwYBBAGCNwIBBDAcBgor
# BgEEAYI3AgELMQ4wDAYKKwYBBAGCNwIBFTAvBgkqhkiG9w0BCQQxIgQgIrSlS+w3
# 6aWEMoK23+L4ROHZ4FUYi3ezs0tRVV8q7gwwQgYKKwYBBAGCNwIBDDE0MDKgFIAS
# AE0AaQBjAHIAbwBzAG8AZgB0oRqAGGh0dHA6Ly93d3cubWljcm9zb2Z0LmNvbTAN
# BgkqhkiG9w0BAQEFAASCAQCiJhaxRrFZ2Es9x7kXQaQHpWhZAr4StbcK0EBYznoV
# 5Pd/3+Zh4iLysL2OVHF2iJIjlIyiaBCj6jqapt7/vQsXRZhgy9AZ6joqrjT8KZHM
# PdFeQ5qVt8ahlmwFYuz4BKeu+tqRCWgiLS3THi10gi5jC7pAk6VVzbgeFsDs5oE4
# JO5lB5ia3tlJFAAVDKo7fazLwD/9MRC574aPGT1JiryubvifebAg+7OHlNZ6j7Ar
# 692SXmOqfHu9GqnlOfA4Upk5wK7TiM8NIZ2xJ+AXM3RmFCkoA+4bxM+kjRiGusEk
# 4c+YOcNkp8DumqtYF54C2f6l7tEmrfVN+tzTo/epXBnHoYIXLDCCFygGCisGAQQB
# gjcDAwExghcYMIIXFAYJKoZIhvcNAQcCoIIXBTCCFwECAQMxDzANBglghkgBZQME
# AgEFADCCAVkGCyqGSIb3DQEJEAEEoIIBSASCAUQwggFAAgEBBgorBgEEAYRZCgMB
# MDEwDQYJYIZIAWUDBAIBBQAEIDsc8hbOJyTOkygrGggmbDOME4SHFpNi8PHzhlhO
# P9W5AgZjT/S66B4YEzIwMjIxMDI4MDcyNzAwLjg5M1owBIACAfSggdikgdUwgdIx
# CzAJBgNVBAYTAlVTMRMwEQYDVQQIEwpXYXNoaW5ndG9uMRAwDgYDVQQHEwdSZWRt
# b25kMR4wHAYDVQQKExVNaWNyb3NvZnQgQ29ycG9yYXRpb24xLTArBgNVBAsTJE1p
# Y3Jvc29mdCBJcmVsYW5kIE9wZXJhdGlvbnMgTGltaXRlZDEmMCQGA1UECxMdVGhh
# bGVzIFRTUyBFU046M0JENC00QjgwLTY5QzMxJTAjBgNVBAMTHE1pY3Jvc29mdCBU
# aW1lLVN0YW1wIFNlcnZpY2WgghF7MIIHJzCCBQ+gAwIBAgITMwAAAbT7gAhEBdIt
# +gABAAABtDANBgkqhkiG9w0BAQsFADB8MQswCQYDVQQGEwJVUzETMBEGA1UECBMK
# V2FzaGluZ3RvbjEQMA4GA1UEBxMHUmVkbW9uZDEeMBwGA1UEChMVTWljcm9zb2Z0
# IENvcnBvcmF0aW9uMSYwJAYDVQQDEx1NaWNyb3NvZnQgVGltZS1TdGFtcCBQQ0Eg
# MjAxMDAeFw0yMjA5MjAyMDIyMDlaFw0yMzEyMTQyMDIyMDlaMIHSMQswCQYDVQQG
# EwJVUzETMBEGA1UECBMKV2FzaGluZ3RvbjEQMA4GA1UEBxMHUmVkbW9uZDEeMBwG
# A1UEChMVTWljcm9zb2Z0IENvcnBvcmF0aW9uMS0wKwYDVQQLEyRNaWNyb3NvZnQg
# SXJlbGFuZCBPcGVyYXRpb25zIExpbWl0ZWQxJjAkBgNVBAsTHVRoYWxlcyBUU1Mg
# RVNOOjNCRDQtNEI4MC02OUMzMSUwIwYDVQQDExxNaWNyb3NvZnQgVGltZS1TdGFt
# cCBTZXJ2aWNlMIICIjANBgkqhkiG9w0BAQEFAAOCAg8AMIICCgKCAgEAtEemnmUH
# MkIfvOiu27K86ZbwWhksGwV72Dl1uGdqr2pKm+mfzoT+Yngkq9aLEf+XDtADyA+2
# KIZU0iO8WG79eJjzz29flZpBKbKg8xl2P3O9drleuQw3TnNfNN4+QIgjMXpE3txP
# F7M7IRLKZMiOt3FfkFWVmiXJAA7E3OIwJgphg09th3Tvzp8MT8+HOtG3bdrRd/y2
# u8VrQsQTLZiVwTZ6qDYKNT8PQZl7xFrSSO3QzXa91LipZnYOl3siGJDCee1Ba7X1
# i13dQFHxKl5Ff4JzDduOBZ85e2VrpyFy1a3ayGUzBrIw59jhMbjIw9YVcQt9kUWn
# tyCmNk15WybCS+hXpEDDLVj1X5W9snmoW1qu03+unprQjWQaVuO7BfcvQdNVdyKS
# qAeKy1eT2Hcc5n1aAVeXFm6sbVJmZzPQEQR3Jr7W8YcTjkqC5hT2qrYuIcYGOf3P
# j4OqdXm1Qqhuwtskxviv7yy3Z+PxJpxKx+2e6zGRaoQmIlLfg/a42XNVHTf6Wzr5
# k7Q1w7v0uA/sFsgyKmI7HzKHX08xDDSmJooXA5btD6B0lx/Lqs6Qb4KthnA7N2IE
# dJ5sjMIhyHZwBr7fzDskU/+Sgp2UnfqrN1Vda/gb+pmlbJwi8MphvElYzjT7PZK2
# Dm4eorcjx7T2QVe3EIelLuGbxzybblZoRTkCAwEAAaOCAUkwggFFMB0GA1UdDgQW
# BBTLRIXl8ZS4Opy7Eii3Tt44zDLZfjAfBgNVHSMEGDAWgBSfpxVdAF5iXYP05dJl
# pxtTNRnpcjBfBgNVHR8EWDBWMFSgUqBQhk5odHRwOi8vd3d3Lm1pY3Jvc29mdC5j
# b20vcGtpb3BzL2NybC9NaWNyb3NvZnQlMjBUaW1lLVN0YW1wJTIwUENBJTIwMjAx
# MCgxKS5jcmwwbAYIKwYBBQUHAQEEYDBeMFwGCCsGAQUFBzAChlBodHRwOi8vd3d3
# Lm1pY3Jvc29mdC5jb20vcGtpb3BzL2NlcnRzL01pY3Jvc29mdCUyMFRpbWUtU3Rh
# bXAlMjBQQ0ElMjAyMDEwKDEpLmNydDAMBgNVHRMBAf8EAjAAMBYGA1UdJQEB/wQM
# MAoGCCsGAQUFBwMIMA4GA1UdDwEB/wQEAwIHgDANBgkqhkiG9w0BAQsFAAOCAgEA
# EtEPBYwpt4JioSq0joGzwqYX6SoNH7YbqpgArdlnrdt6u3ukKREluKEVqS2XajXx
# x0UkXGc4Xi9dp2bSxpuyQnTkq+IQwkg7p1dKrwAa2vdmaNzz3mrSaeUEu40yCThH
# wquQkweoG4eqRRZe19OtVSmDDNC3ZQ6Ig0qz79vivXgy5dFWk4npxA5LxSGR4wBa
# XaIuVhoEa06vd/9/2YsQ99bCiR7SxJRt1XrQ5kJGHUi0Fhgz158qvXgfmq7qNqfq
# fTSmsQRrtbe4Zv/X+qPo/l6ae+SrLkcjRfr0ONV0vFVuNKx6Cb90D5LgNpc9x8V/
# qIHEr+JXbWXW6mARVVqNQCmXlVHjTBjhcXwSmadR1OotcN/sKp2EOM9JPYr86O9Y
# /JAZC9zug9qljKTroZTfYA7LIdcmPr69u1FSD/6ivL6HRHZd/k2EL7FtZwzNcRRd
# FF/VgpkOxHIfqvjXambwoMoT+vtGTtqgoruhhSk0bM1F/pBpi/nPZtVNLGTNaK8W
# t6kscbC9G6f09gz/wBBJOBmvTLPOOT/3taCGSoJoDABWnK+De5pie4KX8BxxKQbJ
# vxz7vRsVJ5R6mGx+Bvav5AjsxvZZw6eQmkI0vPRckxL9TCVCfWS0uyIKmyo6Tdos
# nbBO/osre7r0jS9AH8spEqVlhFcpQNfOg/CvdS2xNVMwggdxMIIFWaADAgECAhMz
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
# 7oJtpQUQwXEGahC0HVUzWLOhcGbyoYIC1zCCAkACAQEwggEAoYHYpIHVMIHSMQsw
# CQYDVQQGEwJVUzETMBEGA1UECBMKV2FzaGluZ3RvbjEQMA4GA1UEBxMHUmVkbW9u
# ZDEeMBwGA1UEChMVTWljcm9zb2Z0IENvcnBvcmF0aW9uMS0wKwYDVQQLEyRNaWNy
# b3NvZnQgSXJlbGFuZCBPcGVyYXRpb25zIExpbWl0ZWQxJjAkBgNVBAsTHVRoYWxl
# cyBUU1MgRVNOOjNCRDQtNEI4MC02OUMzMSUwIwYDVQQDExxNaWNyb3NvZnQgVGlt
# ZS1TdGFtcCBTZXJ2aWNloiMKAQEwBwYFKw4DAhoDFQBlnNiQ85uX9nN4KRJt/gHk
# Jx4JCKCBgzCBgKR+MHwxCzAJBgNVBAYTAlVTMRMwEQYDVQQIEwpXYXNoaW5ndG9u
# MRAwDgYDVQQHEwdSZWRtb25kMR4wHAYDVQQKExVNaWNyb3NvZnQgQ29ycG9yYXRp
# b24xJjAkBgNVBAMTHU1pY3Jvc29mdCBUaW1lLVN0YW1wIFBDQSAyMDEwMA0GCSqG
# SIb3DQEBBQUAAgUA5wWneTAiGA8yMDIyMTAyODA4NTcyOVoYDzIwMjIxMDI5MDg1
# NzI5WjB3MD0GCisGAQQBhFkKBAExLzAtMAoCBQDnBad5AgEAMAoCAQACAgM+AgH/
# MAcCAQACAhEzMAoCBQDnBvj5AgEAMDYGCisGAQQBhFkKBAIxKDAmMAwGCisGAQQB
# hFkKAwKgCjAIAgEAAgMHoSChCjAIAgEAAgMBhqAwDQYJKoZIhvcNAQEFBQADgYEA
# DDRQ0DdYLEWa2N44nNBT6nrbB9IOWpvGyMRnns2O1XYqd4HZpuLYhH0Q6FSBtWL1
# 7GGq3df8LgUUuaxnXRHeg7AVKHBY+Lc79Jgr3KPX5BU3S7irGJdBvnbHL/W9w3eo
# 7vjcny7Ng+HpwA1PNU6eKuJF9Q15apUmRqAorYGcyxkxggQNMIIECQIBATCBkzB8
# MQswCQYDVQQGEwJVUzETMBEGA1UECBMKV2FzaGluZ3RvbjEQMA4GA1UEBxMHUmVk
# bW9uZDEeMBwGA1UEChMVTWljcm9zb2Z0IENvcnBvcmF0aW9uMSYwJAYDVQQDEx1N
# aWNyb3NvZnQgVGltZS1TdGFtcCBQQ0EgMjAxMAITMwAAAbT7gAhEBdIt+gABAAAB
# tDANBglghkgBZQMEAgEFAKCCAUowGgYJKoZIhvcNAQkDMQ0GCyqGSIb3DQEJEAEE
# MC8GCSqGSIb3DQEJBDEiBCDbQTepjsoq3WjrjzBDJjcYza/naHMb2O6k0/yNxbzg
# mDCB+gYLKoZIhvcNAQkQAi8xgeowgecwgeQwgb0EINPI93vmozBwBlFxvfr/rElr
# eFPR4ux7vXKx2ni3AfcGMIGYMIGApH4wfDELMAkGA1UEBhMCVVMxEzARBgNVBAgT
# Cldhc2hpbmd0b24xEDAOBgNVBAcTB1JlZG1vbmQxHjAcBgNVBAoTFU1pY3Jvc29m
# dCBDb3Jwb3JhdGlvbjEmMCQGA1UEAxMdTWljcm9zb2Z0IFRpbWUtU3RhbXAgUENB
# IDIwMTACEzMAAAG0+4AIRAXSLfoAAQAAAbQwIgQg7JuaZchMrN3hEcjakKau1c2M
# gk63ASvAylQ4WtH3DvIwDQYJKoZIhvcNAQELBQAEggIAcySFNDsWjmn7vIhxkvtC
# ooc54Gb2RdjJEK0LkE6fXEMFctWQvjilm7KFT7vqfofOe58rqVkRSuJUEEy9/rj6
# zROLkJVEQ0SCN02Dvz3TisSBifz+aKMh7QWvxnvUZpDfZtzsUT6OUkYM5sUMiTlU
# OQBEJLjMBH/MXLr7lKajhE5MvIcTN/WSofXSBrOK7NvI4geoYtA15BhRIrqgjfu3
# D7eNcs19TfHbxDGJ0VDyzp5t7mHhZHRp7zMLdOx5UslBu7cdKNBJVWPzc/Vuh1SX
# J/igK2gB81hUgVxcf0Dq7SEb3R6T/qX2BvdEc5ZCHanHhH3otXrIQKXULB2amNAf
# 2GBscdhO8/oVMddyIsqJt7JipiCM7htpzj3iOh7nZoD8kj2hVDtYNo9AmRCoNHCR
# oVSr0NDa9R91BPkDG4VF+YB+cXpyfqd+5QFIKwUytKzWlzJd4N+UcyZY89lVSltt
# sH5S+3m0cwNOomo/WN1LqvoNKpc6G6jq6Jgbd4ROuxpTTeM8c977s0TFESq3N5CU
# 8SVU9PQCdEKBMLFDbDu0Ttu/E2IcAnIcyXAEb1uiLaoKN1lvubNTWrIAhy1r0giJ
# 2VcHuW8CsXvvvxyh2BYRUT/YJu8TF/hm7v0SCilO/xCR1KjVOvjuhlQT993SatCT
# i7hdTS0j0aD/0+LI4WpO9LY=
# SIG # End signature block
