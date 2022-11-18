
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
Updates the data connector.
.Description
Updates the data connector.

.Link
https://docs.microsoft.com/powershell/module/az.securityinsights/update-azsentineldataconnector
#>
function Update-AzSentinelDataConnector {
    [OutputType([Microsoft.Azure.PowerShell.Cmdlets.SecurityInsights.Models.Api20210901Preview.DataConnector])]
    [CmdletBinding(DefaultParameterSetName = 'UpdateAADAATP', PositionalBinding = $false, SupportsShouldProcess, ConfirmImpact = 'Medium')]
    param(
        [Parameter(ParameterSetName = 'UpdateAmazonWebServicesCloudTrail')]
        [Parameter(ParameterSetName = 'UpdateAmazonWebServicesS3')]
        [Parameter(ParameterSetName = 'UpdateAADAATP')]    
        [Parameter(ParameterSetName = 'UpdateAzureSecurityCenter')]
        [Parameter(ParameterSetName = 'UpdateDynamics365')]
        #[Parameter(ParameterSetName = 'UpdateGenericUI')]
        [Parameter(ParameterSetName = 'UpdateMicrosoftCloudAppSecurity')]
        [Parameter(ParameterSetName = 'UpdateMicrosoftDefenderAdvancedThreatProtection')]
        [Parameter(ParameterSetName = 'UpdateMicrosoftThreatIntelligence')]
        [Parameter(ParameterSetName = 'UpdateMicrosoftThreatProtection')]
        [Parameter(ParameterSetName = 'UpdateOffice365')]
        [Parameter(ParameterSetName = 'UpdateOfficeATP')]
        [Parameter(ParameterSetName = 'UpdateOfficeIRM')]
        [Parameter(ParameterSetName = 'UpdateThreatIntelligence')]
        [Parameter(ParameterSetName = 'UpdateThreatIntelligenceTaxii')]
        [Microsoft.Azure.PowerShell.Cmdlets.SecurityInsights.Category('Path')]
        [Microsoft.Azure.PowerShell.Cmdlets.SecurityInsights.Runtime.DefaultInfo(Script = '(Get-AzContext).Subscription.Id')]
        [System.String]
        # Gets subscription credentials which uniquely identify Microsoft Azure subscription.
        # The subscription ID forms part of the URI for every service call.
        ${SubscriptionId},

        [Parameter(ParameterSetName = 'UpdateAmazonWebServicesCloudTrail', Mandatory)]
        [Parameter(ParameterSetName = 'UpdateAmazonWebServicesS3', Mandatory)]
        [Parameter(ParameterSetName = 'UpdateAADAATP', Mandatory)]
        [Parameter(ParameterSetName = 'UpdateAzureSecurityCenter', Mandatory)]
        [Parameter(ParameterSetName = 'UpdateDynamics365', Mandatory)]
        #[Parameter(ParameterSetName = 'UpdateGenericUI', Mandatory)]
        [Parameter(ParameterSetName = 'UpdateMicrosoftCloudAppSecurity', Mandatory)]
        [Parameter(ParameterSetName = 'UpdateMicrosoftDefenderAdvancedThreatProtection', Mandatory)]
        [Parameter(ParameterSetName = 'UpdateMicrosoftThreatIntelligence', Mandatory)]
        [Parameter(ParameterSetName = 'UpdateMicrosoftThreatProtection', Mandatory)]
        [Parameter(ParameterSetName = 'UpdateOffice365', Mandatory)]
        [Parameter(ParameterSetName = 'UpdateOfficeATP', Mandatory)]
        [Parameter(ParameterSetName = 'UpdateOfficeIRM', Mandatory)]
        [Parameter(ParameterSetName = 'UpdateThreatIntelligence', Mandatory)]
        [Parameter(ParameterSetName = 'UpdateThreatIntelligenceTaxii', Mandatory)]
        [Microsoft.Azure.PowerShell.Cmdlets.SecurityInsights.Category('Path')]
        [System.String]
        # The Resource Group Name.
        ${ResourceGroupName},

        [Parameter(ParameterSetName = 'UpdateAmazonWebServicesCloudTrail', Mandatory)]
        [Parameter(ParameterSetName = 'UpdateAmazonWebServicesS3', Mandatory)]
        [Parameter(ParameterSetName = 'UpdateAADAATP', Mandatory)]
        [Parameter(ParameterSetName = 'UpdateAzureSecurityCenter', Mandatory)]
        [Parameter(ParameterSetName = 'UpdateDynamics365', Mandatory)]
        #[Parameter(ParameterSetName = 'UpdateGenericUI', Mandatory)]
        [Parameter(ParameterSetName = 'UpdateMicrosoftCloudAppSecurity', Mandatory)]
        [Parameter(ParameterSetName = 'UpdateMicrosoftDefenderAdvancedThreatProtection', Mandatory)]
        [Parameter(ParameterSetName = 'UpdateMicrosoftThreatIntelligence', Mandatory)]
        [Parameter(ParameterSetName = 'UpdateMicrosoftThreatProtection', Mandatory)]
        [Parameter(ParameterSetName = 'UpdateOffice365', Mandatory)]
        [Parameter(ParameterSetName = 'UpdateOfficeATP', Mandatory)]
        [Parameter(ParameterSetName = 'UpdateOfficeIRM', Mandatory)]
        [Parameter(ParameterSetName = 'UpdateThreatIntelligence', Mandatory)]
        [Parameter(ParameterSetName = 'UpdateThreatIntelligenceTaxii', Mandatory)]
        [Microsoft.Azure.PowerShell.Cmdlets.SecurityInsights.Category('Path')]
        [System.String]
        # The name of the workspace.
        ${WorkspaceName},

        [Parameter(ParameterSetName = 'UpdateAmazonWebServicesCloudTrail', Mandatory)]
        [Parameter(ParameterSetName = 'UpdateAmazonWebServicesS3', Mandatory)]
        [Parameter(ParameterSetName = 'UpdateAADAATP', Mandatory)]
        [Parameter(ParameterSetName = 'UpdateAzureSecurityCenter', Mandatory)]
        [Parameter(ParameterSetName = 'UpdateDynamics365', Mandatory)]
        #[Parameter(ParameterSetName = 'UpdateGenericUI', Mandatory)]
        [Parameter(ParameterSetName = 'UpdateMicrosoftCloudAppSecurity', Mandatory)]
        [Parameter(ParameterSetName = 'UpdateMicrosoftDefenderAdvancedThreatProtection', Mandatory)]
        [Parameter(ParameterSetName = 'UpdateMicrosoftThreatIntelligence', Mandatory)]
        [Parameter(ParameterSetName = 'UpdateMicrosoftThreatProtection', Mandatory)]
        [Parameter(ParameterSetName = 'UpdateOffice365', Mandatory)]
        [Parameter(ParameterSetName = 'UpdateOfficeATP', Mandatory)]
        [Parameter(ParameterSetName = 'UpdateOfficeIRM', Mandatory)]
        [Parameter(ParameterSetName = 'UpdateThreatIntelligence', Mandatory)]
        [Parameter(ParameterSetName = 'UpdateThreatIntelligenceTaxii', Mandatory)]
        [Microsoft.Azure.PowerShell.Cmdlets.SecurityInsights.Category('Path')]
        [System.String]
        # The Id of the Data Connector.
        ${Id},

        [Parameter(ParameterSetName = 'UpdateViaIdentityAmazonWebServicesCloudTrail', Mandatory, ValueFromPipeline)]
        [Parameter(ParameterSetName = 'UpdateViaIdentityAmazonWebServicesS3', Mandatory, ValueFromPipeline)]
        [Parameter(ParameterSetName = 'UpdateViaIdentityAADAATP', Mandatory, ValueFromPipeline)]
        [Parameter(ParameterSetName = 'UpdateViaIdentityAzureSecurityCenter', Mandatory, ValueFromPipeline)]
        [Parameter(ParameterSetName = 'UpdateViaIdentityDynamics365', Mandatory, ValueFromPipeline)]
        #[Parameter(ParameterSetName = 'UpdateViaIdentityGenericUI', Mandatory, ValueFromPipeline)]
        [Parameter(ParameterSetName = 'UpdateViaIdentityMicrosoftCloudAppSecurity', Mandatory, ValueFromPipeline)]
        [Parameter(ParameterSetName = 'UpdateViaIdentityMicrosoftDefenderAdvancedThreatProtection', Mandatory, ValueFromPipeline)]
        [Parameter(ParameterSetName = 'UpdateViaIdentityMicrosoftThreatIntelligence', Mandatory, ValueFromPipeline)]
        [Parameter(ParameterSetName = 'UpdateViaIdentityMicrosoftThreatProtection', Mandatory, ValueFromPipeline)]
        [Parameter(ParameterSetName = 'UpdateViaIdentityOffice365', Mandatory, ValueFromPipeline)]
        [Parameter(ParameterSetName = 'UpdateViaIdentityOfficeATP', Mandatory, ValueFromPipeline)]
        [Parameter(ParameterSetName = 'UpdateViaIdentityOfficeIRM', Mandatory, ValueFromPipeline)]
        [Parameter(ParameterSetName = 'UpdateViaIdentityThreatIntelligence', Mandatory, ValueFromPipeline)]
        [Parameter(ParameterSetName = 'UpdateViaIdentityThreatIntelligenceTaxii', Mandatory, ValueFromPipeline)]
        [Microsoft.Azure.PowerShell.Cmdlets.SecurityInsights.Category('Path')]
        [Microsoft.Azure.PowerShell.Cmdlets.SecurityInsights.Models.ISecurityInsightsIdentity]
        # Identity Parameter
        # To construct, see NOTES section for INPUTOBJECT properties and create a hash table.
        ${InputObject},

        [Parameter(ParameterSetName = 'UpdateAmazonWebServicesCloudTrail', Mandatory)]
        [Parameter(ParameterSetName = 'UpdateViaIdentityAmazonWebServicesCloudTrail', Mandatory)]
        [Microsoft.Azure.PowerShell.Cmdlets.SecurityInsights.Category('Runtime')]
        [System.Management.Automation.SwitchParameter]
        ${AWSCloudTrail},
        
        [Parameter(ParameterSetName = 'UpdateAmazonWebServicesS3', Mandatory)]
        [Parameter(ParameterSetName = 'UpdateViaIdentityAmazonWebServicesS3', Mandatory)]
        [Microsoft.Azure.PowerShell.Cmdlets.SecurityInsights.Category('Runtime')]
        [System.Management.Automation.SwitchParameter]
        ${AWSS3},
        
        [Parameter(ParameterSetName = 'UpdateAADAATP', Mandatory)]
        [Parameter(ParameterSetName = 'UpdateViaIdentityAADAATP', Mandatory)]
        [Microsoft.Azure.PowerShell.Cmdlets.SecurityInsights.Category('Runtime')]
        [System.Management.Automation.SwitchParameter]
        ${AzureADorAATP},
        
        [Parameter(ParameterSetName = 'UpdateAzureSecurityCenter', Mandatory)]
        [Parameter(ParameterSetName = 'UpdateViaIdentityAzureSecurityCenter', Mandatory)]
        [Microsoft.Azure.PowerShell.Cmdlets.SecurityInsights.Category('Runtime')]
        [System.Management.Automation.SwitchParameter]
        ${AzureSecurityCenter},
        
        [Parameter(ParameterSetName = 'UpdateDynamics365', Mandatory)]
        [Parameter(ParameterSetName = 'UpdateViaIdentityDynamics365', Mandatory)]
        [Microsoft.Azure.PowerShell.Cmdlets.SecurityInsights.Category('Runtime')]
        [System.Management.Automation.SwitchParameter]
        ${Dynamics365},
        
        #[Parameter(ParameterSetName = 'UpdateGenericUI', Mandatory)]
        #[Parameter(ParameterSetName = 'UpdateViaIdentityGenericUI', Mandatory)]
        #[Microsoft.Azure.PowerShell.Cmdlets.SecurityInsights.Category('Runtime')]
        #[System.Management.Automation.SwitchParameter]
        #${GenericUI},
        
        [Parameter(ParameterSetName = 'UpdateMicrosoftCloudAppSecurity', Mandatory)]
        [Parameter(ParameterSetName = 'UpdateViaIdentityMicrosoftCloudAppSecurity', Mandatory)]
        [Microsoft.Azure.PowerShell.Cmdlets.SecurityInsights.Category('Runtime')]
        [System.Management.Automation.SwitchParameter]
        ${CloudAppSecurity},
        
        [Parameter(ParameterSetName = 'UpdateMicrosoftDefenderAdvancedThreatProtection', Mandatory)]
        [Parameter(ParameterSetName = 'UpdateViaIdentityMicrosoftDefenderAdvancedThreatProtection', Mandatory)]
        [Microsoft.Azure.PowerShell.Cmdlets.SecurityInsights.Category('Runtime')]
        [System.Management.Automation.SwitchParameter]
        ${DefenderATP},

        [Parameter(ParameterSetName = 'UpdateMicrosoftThreatIntelligence', Mandatory)]
        [Parameter(ParameterSetName = 'UpdateViaIdentityMicrosoftThreatIntelligence', Mandatory)]
        [Microsoft.Azure.PowerShell.Cmdlets.SecurityInsights.Category('Runtime')]
        [System.Management.Automation.SwitchParameter]
        ${MicrosoftTI},
        
        [Parameter(ParameterSetName = 'UpdateMicrosoftThreatProtection', Mandatory)]
        [Parameter(ParameterSetName = 'UpdateViaIdentityMicrosoftThreatProtection', Mandatory)]
        [Microsoft.Azure.PowerShell.Cmdlets.SecurityInsights.Category('Runtime')]
        [System.Management.Automation.SwitchParameter]
        ${MicrosoftThreatProtection},
        
        [Parameter(ParameterSetName = 'UpdateOffice365', Mandatory)]
        [Parameter(ParameterSetName = 'UpdateViaIdentityOffice365', Mandatory)]
        [Microsoft.Azure.PowerShell.Cmdlets.SecurityInsights.Category('Runtime')]
        [System.Management.Automation.SwitchParameter]
        ${Office365},
        
        [Parameter(ParameterSetName = 'UpdateOfficeATP', Mandatory)]
        [Parameter(ParameterSetName = 'UpdateViaIdentityOfficeATP', Mandatory)]
        [Microsoft.Azure.PowerShell.Cmdlets.SecurityInsights.Category('Runtime')]
        [System.Management.Automation.SwitchParameter]
        ${OfficeATP},
        
        [Parameter(ParameterSetName = 'UpdateOfficeIRM', Mandatory)]
        [Parameter(ParameterSetName = 'UpdateViaIdentityOfficeIRM', Mandatory)]
        [Microsoft.Azure.PowerShell.Cmdlets.SecurityInsights.Category('Runtime')]
        [System.Management.Automation.SwitchParameter]
        ${OfficeIRM},
        
        [Parameter(ParameterSetName = 'UpdateThreatIntelligence', Mandatory)]
        [Parameter(ParameterSetName = 'UpdateViaIdentityThreatIntelligence', Mandatory)]
        [Microsoft.Azure.PowerShell.Cmdlets.SecurityInsights.Category('Runtime')]
        [System.Management.Automation.SwitchParameter]
        ${ThreatIntelligence},
        
        [Parameter(ParameterSetName = 'UpdateThreatIntelligenceTaxii', Mandatory)]
        [Parameter(ParameterSetName = 'UpdateViaIdentityThreatIntelligenceTaxii', Mandatory)]
        [Microsoft.Azure.PowerShell.Cmdlets.SecurityInsights.Category('Runtime')]
        [System.Management.Automation.SwitchParameter]
        ${ThreatIntelligenceTaxii},

        [Parameter(ParameterSetName = 'UpdateAADAATP')]
        [Parameter(ParameterSetName = 'UpdateDynamics365')]
        [Parameter(ParameterSetName = 'UpdateMicrosoftCloudAppSecurity')]
        [Parameter(ParameterSetName = 'UpdateMicrosoftDefenderAdvancedThreatProtection')]
        [Parameter(ParameterSetName = 'UpdateMicrosoftThreatIntelligence')]
        [Parameter(ParameterSetName = 'UpdateMicrosoftThreatProtection')]
        [Parameter(ParameterSetName = 'UpdateOffice365')]
        [Parameter(ParameterSetName = 'UpdateOfficeATP')]
        [Parameter(ParameterSetName = 'UpdateOfficeIRM')]
        [Parameter(ParameterSetName = 'UpdateThreatIntelligence')]
        [Parameter(ParameterSetName = 'UpdateThreatIntelligenceTaxii')]
        [Parameter(ParameterSetName = 'UpdateViaIdentityAmazonWebServicesCloudTrail')]
        [Parameter(ParameterSetName = 'UpdateViaIdentityAmazonWebServicesS3')]
        [Parameter(ParameterSetName = 'UpdateViaIdentityAADAATP')]
        [Parameter(ParameterSetName = 'UpdateViaIdentityAzureSecurityCenter')]
        [Parameter(ParameterSetName = 'UpdateViaIdentityDynamics365')]
        #[Parameter(ParameterSetName = 'UpdateViaIdentityGenericUI')]
        [Parameter(ParameterSetName = 'UpdateViaIdentityMicrosoftCloudAppSecurity')]
        [Parameter(ParameterSetName = 'UpdateViaIdentityMicrosoftDefenderAdvancedThreatProtection')]
        [Parameter(ParameterSetName = 'UpdateViaIdentityMicrosoftThreatIntelligence')]
        [Parameter(ParameterSetName = 'UpdateViaIdentityMicrosoftThreatProtection')]
        [Parameter(ParameterSetName = 'UpdateViaIdentityOffice365')]
        [Parameter(ParameterSetName = 'UpdateViaIdentityOfficeATP')]
        [Parameter(ParameterSetName = 'UpdateViaIdentityOfficeIRM')]
        [Parameter(ParameterSetName = 'UpdateViaIdentityThreatIntelligence')]
        [Parameter(ParameterSetName = 'UpdateViaIdentityThreatIntelligenceTaxii')]
        [Microsoft.Azure.PowerShell.Cmdlets.SecurityInsights.Category('Body')]
        [Microsoft.Azure.PowerShell.Cmdlets.SecurityInsights.Runtime.DefaultInfo(Script = '(Get-AzContext).Tenant.Id')]
        [System.String]
        # The TenantId.
        ${TenantId},

        [Parameter(ParameterSetName = 'UpdateAzureSecurityCenter')]
        [Parameter(ParameterSetName = 'UpdateViaIdentityAzureSecurityCenter')]
        [Microsoft.Azure.PowerShell.Cmdlets.SecurityInsights.Category('Body')]
        [System.String]
        # ASC Subscription Id.
        ${ASCSubscriptionId},

        [Parameter(ParameterSetName = 'UpdateAADAATP')]
        [Parameter(ParameterSetName = 'UpdateAzureSecurityCenter')]
        [Parameter(ParameterSetName = 'UpdateMicrosoftCloudAppSecurity')]
        [Parameter(ParameterSetName = 'UpdateMicrosoftDefenderAdvancedThreatProtection')]
        [Parameter(ParameterSetName = 'UpdateOfficeATP')]
        [Parameter(ParameterSetName = 'UpdateOfficeIRM')]
        [Parameter(ParameterSetName = 'UpdateViaIdentityAADAATP')]
        [Parameter(ParameterSetName = 'UpdateViaIdentityAzureSecurityCenter')]
        [Parameter(ParameterSetName = 'UpdateViaIdentityMicrosoftCloudAppSecurity')]
        [Parameter(ParameterSetName = 'UpdateViaIdentityMicrosoftDefenderAdvancedThreatProtection')]
        [Parameter(ParameterSetName = 'UpdateViaIdentityOfficeATP')]
        [Parameter(ParameterSetName = 'UpdateViaIdentityOfficeIRM')]
        [ArgumentCompleter([Microsoft.Azure.PowerShell.Cmdlets.SecurityInsights.Support.DataTypeState])]
        [Microsoft.Azure.PowerShell.Cmdlets.SecurityInsights.Category('Body')]
        [System.String]
        ${Alerts},

        [Parameter(ParameterSetName = 'UpdateDynamics365')]
        [Parameter(ParameterSetName = 'UpdateViaIdentityDynamics365')]
        [ArgumentCompleter([Microsoft.Azure.PowerShell.Cmdlets.SecurityInsights.Support.DataTypeState])]
        [Microsoft.Azure.PowerShell.Cmdlets.SecurityInsights.Category('Body')]
        [System.String]
        ${CommonDataServiceActivity},

        [Parameter(ParameterSetName = 'UpdateMicrosoftCloudAppSecurity')]
        [Parameter(ParameterSetName = 'UpdateViaIdentityMicrosoftCloudAppSecurity')]
        [ArgumentCompleter([Microsoft.Azure.PowerShell.Cmdlets.SecurityInsights.Support.DataTypeState])]
        [Microsoft.Azure.PowerShell.Cmdlets.SecurityInsights.Category('Body')]
        [System.String]
        ${DiscoveryLog},

        [Parameter(ParameterSetName = 'UpdateMicrosoftThreatIntelligence')]
        [Parameter(ParameterSetName = 'UpdateViaIdentityMicrosoftThreatIntelligence')]
        [ArgumentCompleter([Microsoft.Azure.PowerShell.Cmdlets.SecurityInsights.Support.DataTypeState])]
        [Microsoft.Azure.PowerShell.Cmdlets.SecurityInsights.Category('Body')]
        [System.String]
        ${BingSafetyPhishinURL},

        [Parameter(ParameterSetName = 'UpdateMicrosoftThreatIntelligence')]
        [Parameter(ParameterSetName = 'UpdateViaIdentityMicrosoftThreatIntelligence')]
        [Microsoft.Azure.PowerShell.Cmdlets.SecurityInsights.Category('Body')]
        [ValidateSet('OneDay', 'OneWeek', 'OneMonth', 'All')]
        [System.String]
        ${BingSafetyPhishingUrlLookbackPeriod},

        [Parameter(ParameterSetName = 'UpdateMicrosoftThreatIntelligence')]
        [Parameter(ParameterSetName = 'UpdateViaIdentityMicrosoftThreatIntelligence')]
        [ArgumentCompleter([Microsoft.Azure.PowerShell.Cmdlets.SecurityInsights.Support.DataTypeState])]
        [Microsoft.Azure.PowerShell.Cmdlets.SecurityInsights.Category('Body')]
        [System.String]
        ${MicrosoftEmergingThreatFeed},

        [Parameter(ParameterSetName = 'UpdateMicrosoftThreatIntelligence')]
        [Parameter(ParameterSetName = 'UpdateViaIdentityMicrosoftThreatIntelligence')]
        [Microsoft.Azure.PowerShell.Cmdlets.SecurityInsights.Category('Body')]
        [ValidateSet('OneDay', 'OneWeek', 'OneMonth', 'All')]
        [System.String]
        ${MicrosoftEmergingThreatFeedLookbackPeriod},

        [Parameter(ParameterSetName = 'UpdateMicrosoftThreatProtection')]
        [Parameter(ParameterSetName = 'UpdateViaIdentityMicrosoftThreatProtection')]
        [ArgumentCompleter([Microsoft.Azure.PowerShell.Cmdlets.SecurityInsights.Support.DataTypeState])]
        [Microsoft.Azure.PowerShell.Cmdlets.SecurityInsights.Category('Body')]
        [System.String]
        ${Incident},

        [Parameter(ParameterSetName = 'UpdateOffice365')]
        [Parameter(ParameterSetName = 'UpdateViaIdentityOffice365')]
        [ArgumentCompleter([Microsoft.Azure.PowerShell.Cmdlets.SecurityInsights.Support.DataTypeState])]
        [Microsoft.Azure.PowerShell.Cmdlets.SecurityInsights.Category('Body')]
        [System.String]
        ${Exchange},

        [Parameter(ParameterSetName = 'UpdateOffice365')]
        [Parameter(ParameterSetName = 'UpdateViaIdentityOffice365')]
        [ArgumentCompleter([Microsoft.Azure.PowerShell.Cmdlets.SecurityInsights.Support.DataTypeState])]
        [Microsoft.Azure.PowerShell.Cmdlets.SecurityInsights.Category('Body')]
        [System.String]
        ${SharePoint},

        [Parameter(ParameterSetName = 'UpdateOffice365')]
        [Parameter(ParameterSetName = 'UpdateViaIdentityOffice365')]
        [ArgumentCompleter([Microsoft.Azure.PowerShell.Cmdlets.SecurityInsights.Support.DataTypeState])]
        [Microsoft.Azure.PowerShell.Cmdlets.SecurityInsights.Category('Body')]
        [System.String]
        ${Teams},

        [Parameter(ParameterSetName = 'UpdateThreatIntelligence')]
        [Parameter(ParameterSetName = 'UpdateViaIdentityThreatIntelligence')]
        [ArgumentCompleter([Microsoft.Azure.PowerShell.Cmdlets.SecurityInsights.Support.DataTypeState])]
        [Microsoft.Azure.PowerShell.Cmdlets.SecurityInsights.Category('Body')]
        [System.String]
        ${Indicator},

        [Parameter(ParameterSetName = 'UpdateThreatIntelligenceTaxii')]
        [Parameter(ParameterSetName = 'UpdateViaIdentityThreatIntelligenceTaxii')]
        [Microsoft.Azure.PowerShell.Cmdlets.SecurityInsights.Category('Body')]
        [System.String]
        ${WorkspaceId},

        [Parameter(ParameterSetName = 'UpdateThreatIntelligenceTaxii')]
        [Parameter(ParameterSetName = 'UpdateViaIdentityThreatIntelligenceTaxii')]
        [Microsoft.Azure.PowerShell.Cmdlets.SecurityInsights.Category('Body')]
        [System.String]
        ${FriendlyName},

        [Parameter(ParameterSetName = 'UpdateThreatIntelligenceTaxii', Mandatory)]
        [Microsoft.Azure.PowerShell.Cmdlets.SecurityInsights.Category('Body')]
        [System.String]
        ${APIRootURL},

        [Parameter(ParameterSetName = 'UpdateThreatIntelligenceTaxii')]
        [Parameter(ParameterSetName = 'UpdateViaIdentityThreatIntelligenceTaxii')]
        [Microsoft.Azure.PowerShell.Cmdlets.SecurityInsights.Category('Body')]
        [System.String]
        ${CollectionId},

        [Parameter(ParameterSetName = 'UpdateThreatIntelligenceTaxii')]
        [Parameter(ParameterSetName = 'UpdateViaIdentityThreatIntelligenceTaxii')]
        [Microsoft.Azure.PowerShell.Cmdlets.SecurityInsights.Category('Body')]
        [System.String]
        ${UserName},

        [Parameter(ParameterSetName = 'UpdateThreatIntelligenceTaxii')]
        [Parameter(ParameterSetName = 'UpdateViaIdentityThreatIntelligenceTaxii')]
        [Microsoft.Azure.PowerShell.Cmdlets.SecurityInsights.Category('Body')]
        [System.String]
        ${Password},

        [Parameter(ParameterSetName = 'UpdateThreatIntelligenceTaxii')]
        [Parameter(ParameterSetName = 'UpdateViaIdentityThreatIntelligenceTaxii')]
        [Microsoft.Azure.PowerShell.Cmdlets.SecurityInsights.Category('Body')]
        [ValidateSet('OneDay', 'OneWeek', 'OneMonth', 'All')]
        [System.String]
        ${TaxiiLookbackPeriod},

        [Parameter(ParameterSetName = 'UpdateThreatIntelligenceTaxii')]
        [Parameter(ParameterSetName = 'UpdateViaIdentityThreatIntelligenceTaxii')]
        [ArgumentCompleter([Microsoft.Azure.PowerShell.Cmdlets.SecurityInsights.Support.PollingFrequency])]
        [Microsoft.Azure.PowerShell.Cmdlets.SecurityInsights.Category('Body')]
        [Microsoft.Azure.PowerShell.Cmdlets.SecurityInsights.Support.PollingFrequency]
        ${PollingFrequency},

        [Parameter(ParameterSetName = 'UpdateAmazonWebServicesCloudTrail')]
        [Parameter(ParameterSetName = 'UpdateAmazonWebServicesS3')]
        [Parameter(ParameterSetName = 'UpdateViaIdentityAmazonWebServicesCloudTrail')]
        [Parameter(ParameterSetName = 'UpdateViaIdentityAmazonWebServicesS3')]
        [Microsoft.Azure.PowerShell.Cmdlets.SecurityInsights.Category('Body')]
        [System.String]
        ${AWSRoleArn},

        [Parameter(ParameterSetName = 'UpdateAmazonWebServicesCloudTrail')]
        [Parameter(ParameterSetName = 'UpdateAmazonWebServicesS3')]
        [Parameter(ParameterSetName = 'UpdateViaIdentityAmazonWebServicesCloudTrail')]
        [Parameter(ParameterSetName = 'UpdateViaIdentityAmazonWebServicesS3')]
        [ArgumentCompleter([Microsoft.Azure.PowerShell.Cmdlets.SecurityInsights.Support.DataTypeState])]
        [Microsoft.Azure.PowerShell.Cmdlets.SecurityInsights.Category('Body')]
        [System.String]
        ${Log},

        [Parameter(ParameterSetName = 'UpdateAmazonWebServicesS3')]
        [Parameter(ParameterSetName = 'UpdateViaIdentityAmazonWebServicesS3')]
        [Microsoft.Azure.PowerShell.Cmdlets.SecurityInsights.Category('Body')]
        [String[]]
        ${SQSURL},

        [Parameter(ParameterSetName = 'UpdateAmazonWebServicesS3')]
        [Parameter(ParameterSetName = 'UpdateViaIdentityAmazonWebServicesS3')]
        [Microsoft.Azure.PowerShell.Cmdlets.SecurityInsights.Category('Body')]
        [System.String]
        ${DetinationTable},

        [Parameter(ParameterSetName = 'UpdateGenericUI')]
        [Parameter(ParameterSetName = 'UpdateViaIdentityGenericUI')]
        [Microsoft.Azure.PowerShell.Cmdlets.SecurityInsights.Category('Body')]
        [System.String]
        ${UiConfigTitle},

        [Parameter(ParameterSetName = 'UpdateGenericUI')]
        [Parameter(ParameterSetName = 'UpdateViaIdentityGenericUI')]
        [Microsoft.Azure.PowerShell.Cmdlets.SecurityInsights.Category('Body')]
        [System.String]
        ${UiConfigPublisher},

        [Parameter(ParameterSetName = 'UpdateGenericUI')]
        [Parameter(ParameterSetName = 'UpdateViaIdentityGenericUI')]
        [Microsoft.Azure.PowerShell.Cmdlets.SecurityInsights.Category('Body')]
        [System.String]
        ${UiConfigDescriptionMarkdown},

        [Parameter(ParameterSetName = 'UpdateGenericUI')]
        [Parameter(ParameterSetName = 'UpdateViaIdentityGenericUI')]
        [Microsoft.Azure.PowerShell.Cmdlets.SecurityInsights.Category('Body')]
        [System.String]
        ${UiConfigCustomImage},

        [Parameter(ParameterSetName = 'UpdateGenericUI')]
        [Parameter(ParameterSetName = 'UpdateViaIdentityGenericUI')]
        [Microsoft.Azure.PowerShell.Cmdlets.SecurityInsights.Category('Body')]
        [System.String]
        ${UiConfigGraphQueriesTableName},

        [Parameter(ParameterSetName = 'UpdateGenericUI')]
        [Parameter(ParameterSetName = 'UpdateViaIdentityGenericUI')]
        [Microsoft.Azure.PowerShell.Cmdlets.SecurityInsights.Category('Body')]
        [Microsoft.Azure.PowerShell.Cmdlets.SecurityInsights.Models.Api20210901Preview.GraphQueries[]]
        ${UiConfigGraphQuery},

        [Parameter(ParameterSetName = 'UpdateGenericUI')]
        [Parameter(ParameterSetName = 'UpdateViaIdentityGenericUI')]
        [Microsoft.Azure.PowerShell.Cmdlets.SecurityInsights.Category('Body')]
        [Microsoft.Azure.PowerShell.Cmdlets.SecurityInsights.Models.Api20210901Preview.SampleQueries[]]
        ${UiConfigSampleQuery},

        [Parameter(ParameterSetName = 'UpdateGenericUI')]
        [Parameter(ParameterSetName = 'UpdateViaIdentityGenericUI')]
        [Microsoft.Azure.PowerShell.Cmdlets.SecurityInsights.Category('Body')]
        [Microsoft.Azure.PowerShell.Cmdlets.SecurityInsights.Models.Api20210901Preview.LastDataReceivedDataType[]]
        ${UiConfigDataType},

        [Parameter(ParameterSetName = 'UpdateGenericUI')]
        [Parameter(ParameterSetName = 'UpdateViaIdentityGenericUI')]
        [Microsoft.Azure.PowerShell.Cmdlets.SecurityInsights.Category('Body')]
        [Microsoft.Azure.PowerShell.Cmdlets.SecurityInsights.Models.Api20210901Preview.ConnectivityCriteria[]]
        ${UiConfigConnectivityCriterion},

        [Parameter(ParameterSetName = 'UpdateGenericUI')]
        [Parameter(ParameterSetName = 'UpdateViaIdentityGenericUI')]
        [Microsoft.Azure.PowerShell.Cmdlets.SecurityInsights.Category('Body')]
        [Bool]
        ${AvailabilityIsPreview},

        [Parameter(ParameterSetName = 'UpdateGenericUI')]
        [Parameter(ParameterSetName = 'UpdateViaIdentityGenericUI')]
        [Microsoft.Azure.PowerShell.Cmdlets.SecurityInsights.Category('Body')]
        [Microsoft.Azure.PowerShell.Cmdlets.SecurityInsights.Runtime.DefaultInfo(Script = 1)]
        [Int]
        ${AvailabilityStatus},

        [Parameter(ParameterSetName = 'UpdateGenericUI')]
        [Parameter(ParameterSetName = 'UpdateViaIdentityGenericUI')]
        [Microsoft.Azure.PowerShell.Cmdlets.SecurityInsights.Category('Body')]
        [Microsoft.Azure.PowerShell.Cmdlets.SecurityInsights.Models.Api20210901Preview.PermissionsResourceProviderItem[]] 
        ${PermissionResourceProvider},

        [Parameter(ParameterSetName = 'UpdateGenericUI')]
        [Parameter(ParameterSetName = 'UpdateViaIdentityGenericUI')]
        [Microsoft.Azure.PowerShell.Cmdlets.SecurityInsights.Category('Body')]
        [Microsoft.Azure.PowerShell.Cmdlets.SecurityInsights.Models.Api20210901Preview.PermissionsCustomsItem[]]
        ${PermissionCustom},

        [Parameter(ParameterSetName = 'UpdateGenericUI')]
        [Parameter(ParameterSetName = 'UpdateViaIdentityGenericUI')]
        [Microsoft.Azure.PowerShell.Cmdlets.SecurityInsights.Category('Body')]
        [Microsoft.Azure.PowerShell.Cmdlets.SecurityInsights.Models.Api20210901Preview.InstructionSteps[]]
        ${UiConfigInstructionStep},

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
            #Handle Get
            $GetPSBoundParameters = @{}
            if ($PSBoundParameters['InputObject']) {
                $GetPSBoundParameters.Add('InputObject', $PSBoundParameters['InputObject'])
            }
            else {
                $GetPSBoundParameters.Add('ResourceGroupName', $PSBoundParameters['ResourceGroupName'])
                $GetPSBoundParameters.Add('WorkspaceName', $PSBoundParameters['WorkspaceName'])
                $GetPSBoundParameters.Add('Id', $PSBoundParameters['Id'])
            }
            $DataConnector = Az.SecurityInsights\Get-AzSentinelDataConnector @GetPSBoundParameters


            if ($DataConnector.Kind -eq 'AzureActiveDirectory') {
                If ($PSBoundParameters['TenantId']) {
                    $DataConnector.TenantId = $PSBoundParameters['TenantId']
                    $null = $PSBoundParameters.Remove('TenantId')
                }
                If ($PSBoundParameters['Alerts']) {
                    $DataConnector.AlertState = $PSBoundParameters['Alerts']
                    $null = $PSBoundParameters.Remove('Alerts')
                }

                $null = $PSBoundParameters.Remove('AzureADorAATP')
            }
            if ($DataConnector.Kind -eq 'AzureAdvancedThreatProtection') {
                If ($PSBoundParameters['TenantId']) {
                    $DataConnector.TenantId = $PSBoundParameters['TenantId']
                    $null = $PSBoundParameters.Remove('TenantId')
                }
                If ($PSBoundParameters['Alerts']) {
                    $DataConnector.AlertState = $PSBoundParameters['Alerts']
                    $null = $PSBoundParameters.Remove('Alerts')
                }
                $null = $PSBoundParameters.Remove('AzureADorAATP')
            }
            if ($DataConnector.Kind -eq 'Dynamics365') {
                If ($PSBoundParameters['TenantId']) {
                    $DataConnector.TenantId = $PSBoundParameters['TenantId']
                    $null = $PSBoundParameters.Remove('TenantId')
                }

                If ($PSBoundParameters['CommonDataServiceActivity']) {
                    $DataConnector.Dynamics365CdActivityState = $PSBoundParameters['CommonDataServiceActivity']
                    $null = $PSBoundParameters.Remove('CommonDataServiceActivity')
                }
                $null = $PSBoundParameters.Remove('Dynamics365')
            }
            if ($DataConnector.Kind -eq 'MicrosoftCloudAppSecurity') {
                If ($PSBoundParameters['TenantId']) {
                    $DataConnector.TenantId = $PSBoundParameters['TenantId']
                    $null = $PSBoundParameters.Remove('TenantId')
                }

                If ($PSBoundParameters['Alerts']) {
                    $DataConnector.DataTypeAlertState = $PSBoundParameters['Alerts']
                    $null = $PSBoundParameters.Remove('Alerts')
                }

                If ($PSBoundParameters['DiscoveryLog']) {
                    $DataConnector.DiscoveryLogState = $PSBoundParameters['DiscoveryLog']
                    $null = $PSBoundParameters.Remove('DiscoveryLog')
                }
                $null = $PSBoundParameters.Remove('CloudAppSecurity')
            }
            if ($DataConnector.Kind -eq 'MicrosoftDefenderAdvancedThreatProtection') {
                If ($PSBoundParameters['TenantId']) {
                    $DataConnector.TenantId = $PSBoundParameters['TenantId']
                    $null = $PSBoundParameters.Remove('TenantId')
                }

                If ($PSBoundParameters['Alerts']) {
                    $DataConnector.AlertState = $PSBoundParameters['Alerts']
                    $null = $PSBoundParameters.Remove('Alerts')
                }
                $null = $PSBoundParameters.Remove('DefenderATP')
            }
            if ($DataConnector.Kind -eq 'MicrosoftThreatIntelligence') {
                If ($PSBoundParameters['TenantId']) {
                    $DataConnector.TenantId = $PSBoundParameters['TenantId']
                    $null = $PSBoundParameters.Remove('TenantId')
                }
                
                If ($PSBoundParameters['BingSafetyPhishinURL']) {
                    $DataConnector.BingSafetyPhishingUrlState = $PSBoundParameters['BingSafetyPhishinURL']
                    $null = $PSBoundParameters.Remove('BingSafetyPhishinURL')
                }

                If ($PSBoundParameters['BingSafetyPhishingUrlLookbackPeriod']) {
                    if ($PSBoundParameters['BingSafetyPhishingUrlLookbackPeriod'] -eq 'OneDay') {
                        $DataConnector.BingSafetyPhishingUrlLookbackPeriod = ((Get-Date).AddDays(-1).ToUniversalTime() | Get-DAte -Format yyyy-MM-ddTHH:mm:ss.fffZ).ToString()
                    }
                    elseif ($PSBoundParameters['BingSafetyPhishingUrlLookbackPeriod'] -eq 'OneWeek') {
                        $DataConnector.BingSafetyPhishingUrlLookbackPeriod = ((Get-Date).AddDays(-7).ToUniversalTime() | Get-DAte -Format yyyy-MM-ddTHH:mm:ss.fffZ).ToString()
                    }
                    elseif ($PSBoundParameters['BingSafetyPhishingUrlLookbackPeriod'] -eq 'OneMonth') {
                        $DataConnector.BingSafetyPhishingUrlLookbackPeriod = ((Get-Date).AddMonths(-1).ToUniversalTime() | Get-DAte -Format yyyy-MM-ddTHH:mm:ss.fffZ).ToString()
                    }
                    elseif ($PSBoundParameters['BingSafetyPhishingUrlLookbackPeriod'] -eq 'All') {
                        $DataConnector.BingSafetyPhishingUrlLookbackPeriod = "1970-01-01T00:00:00.000Z"
                    }
                    $null = $PSBoundParameters.Remove('BingSafetyPhishingUrlLookbackPeriod')
                }
                
                If ($PSBoundParameters['MicrosoftEmergingThreatFeed']) {
                    $DataConnector.MicrosoftEmergingThreatFeedState = $PSBoundParameters['MicrosoftEmergingThreatFeed']
                    $null = $PSBoundParameters.Remove('MicrosoftEmergingThreatFeed')
                }
                
                If ($PSBoundParameters['MicrosoftEmergingThreatFeedLookbackPeriod']) {
                    if ($PSBoundParameters['MicrosoftEmergingThreatFeedLookbackPeriod'] -eq 'OneDay') {
                        $DataConnector.MicrosoftEmergingThreatFeedLookbackPeriod = ((Get-Date).AddDays(-1).ToUniversalTime() | Get-DAte -Format yyyy-MM-ddTHH:mm:ss.fffZ).ToString()
                    }
                    elseif ($PSBoundParameters['MicrosoftEmergingThreatFeedLookbackPeriod'] -eq 'OneWeek') {
                        $DataConnector.MicrosoftEmergingThreatFeedLookbackPeriod = ((Get-Date).AddDays(-7).ToUniversalTime() | Get-DAte -Format yyyy-MM-ddTHH:mm:ss.fffZ).ToString()
                    }
                    elseif ($PSBoundParameters['MicrosoftEmergingThreatFeedLookbackPeriod'] -eq 'OneMonth') {
                        $DataConnector.MicrosoftEmergingThreatFeedLookbackPeriod = ((Get-Date).AddMonths(-1).ToUniversalTime() | Get-DAte -Format yyyy-MM-ddTHH:mm:ss.fffZ).ToString()
                    }
                    elseif ($PSBoundParameters['MicrosoftEmergingThreatFeedLookbackPeriod'] -eq 'All') {
                        $DataConnector.MicrosoftEmergingThreatFeedLookbackPeriod = "1970-01-01T00:00:00.000Z"
                    }
                    $null = $PSBoundParameters.Remove('MicrosoftEmergingThreatFeedLookbackPeriod')
                }
                $null = $PSBoundParameters.Remove('MicrosoftTI')
            }
            if ($DataConnector.Kind -eq 'MicrosoftThreatProtection') {
                If ($PSBoundParameters['TenantId']) {
                    $DataConnector.TenantId = $PSBoundParameters['TenantId']
                    $null = $PSBoundParameters.Remove('TenantId')
                }

                If ($PSBoundParameters['Incident']) {
                    $DataConnector.IncidentState = $PSBoundParameters['Incident']
                    $null = $PSBoundParameters.Remove('Incident')
                }
                $null = $PSBoundParameters.Remove('MicrosoftThreatProtection')
            }
            if ($DataConnector.Kind -eq 'Office365') {
                If ($PSBoundParameters['TenantId']) {
                    $DataConnector.TenantId = $PSBoundParameters['TenantId']
                    $null = $PSBoundParameters.Remove('TenantId')
                }

                If ($PSBoundParameters['Exchange']) {
                    $DataConnector.ExchangeState = $PSBoundParameters['Exchange']
                    $null = $PSBoundParameters.Remove('Exchange')
                }

                If ($PSBoundParameters['SharePoint']) {
                    $DataConnector.SharePointState = $PSBoundParameters['SharePoint']
                    $null = $PSBoundParameters.Remove('SharePoint')
                }

                If ($PSBoundParameters['Teams']) {
                    $DataConnector.TeamState = $PSBoundParameters['Teams']
                    $null = $PSBoundParameters.Remove('Teams')
                }
                $null = $PSBoundParameters.Remove('Office365')
            }
            if ($DataConnector.Kind -eq 'OfficeATP') {
                If ($PSBoundParameters['TenantId']) {
                    $DataConnector.TenantId = $PSBoundParameters['TenantId']
                    $null = $PSBoundParameters.Remove('TenantId')
                }
                
                If ($PSBoundParameters['Alerts']) {
                    $DataConnector.AlertState = $PSBoundParameters['Alerts']
                    $null = $PSBoundParameters.Remove('Alerts')
                }
                $null = $PSBoundParameters.Remove('OfficeATP')
            }
            if ($DataConnector.Kind -eq 'OfficeIRM') {
                If ($PSBoundParameters['TenantId']) {
                    $DataConnector.TenantId = $PSBoundParameters['TenantId']
                    $null = $PSBoundParameters.Remove('TenantId')
                }
                
                If ($PSBoundParameters['Alerts']) {
                    $DataConnector.AlertState = $PSBoundParameters['Alerts']
                    $null = $PSBoundParameters.Remove('Alerts')
                }
                $null = $PSBoundParameters.Remove('OfficeIRM')
            }
            if ($DataConnector.Kind -eq 'ThreatIntelligence') {
                If ($PSBoundParameters['TenantId']) {
                    $DataConnector.TenantId = $PSBoundParameters['TenantId']
                    $null = $PSBoundParameters.Remove('TenantId')
                }
                
                If ($PSBoundParameters['Indicator']) {
                    $DataConnector.IndicatorState = $PSBoundParameters['Indicator']
                    $null = $PSBoundParameters.Remove('Indicator')
                }
                $null = $PSBoundParameters.Remove('ThreatIntelligence')
            }
            if ($DataConnector.Kind -eq 'ThreatIntelligenceTaxii') {
                If ($PSBoundParameters['TenantId']) {
                    $DataConnector.TenantId = $PSBoundParameters['TenantId']
                    $null = $PSBoundParameters.Remove('TenantId')
                }

                If ($PSBoundParameters['FriendlyName']) {
                    $DataConnector.FriendlyName = $PSBoundParameters['FriendlyName']
                    $null = $PSBoundParameters.Remove('FriendlyName')
                }

                If ($PSBoundParameters['APIRootURL']) {
                    $DataConnector.TaxiiServer = $PSBoundParameters['APIRootURL']
                    $null = $PSBoundParameters.Remove('APIRootURL')
                }

                If ($PSBoundParameters['CollectionId']) {
                    $DataConnector.CollectionId = $PSBoundParameters['CollectionId']
                    $null = $PSBoundParameters.Remove('CollectionId')
                }

                If ($PSBoundParameters['UserName']) {
                    $DataConnector.UserName = $PSBoundParameters['UserName']
                    $null = $PSBoundParameters.Remove('UserName')
                }

                If ($PSBoundParameters['Password']) {
                    $DataConnector.Password = $PSBoundParameters['Password']
                    $null = $PSBoundParameters.Remove('Password')
                }

                If ($PSBoundParameters['WorkspaceId']) {
                    $DataConnector.WorkspaceId = $PSBoundParameters['WorkspaceId']
                    $null = $PSBoundParameters.Remove('WorkspaceId')
                }
                
                if ($PSBoundParameters['PollingFrequency']) {
                    if ($PSBoundParameters['PollingFrequency'] -eq 'OnceADay') {
                        $DataConnector.PollingFrequency = "OnceADay"
                    }
                    elseif ($PSBoundParameters['PollingFrequency'] -eq 'OnceAMinute') {
                        $DataConnector.PollingFrequency = "OnceAMinute"
                    }
                    elseif ($PSBoundParameters['PollingFrequency'] -eq 'OnceAnHour') {
                        $DataConnector.PollingFrequency = "OnceAnHour"
                    }
                    $null = $PSBoundParameters.Remove('PollingFrequency')
                }
                $null = $PSBoundParameters.Remove('ThreatIntelligenceTaxii')
            }
            if ($DataConnector.Kind -eq 'AzureSecurityCenter') {
                If ($PSBoundParameters['ASCSubscriptionId']) {
                    $DataConnector.SubscriptionId = $PSBoundParameters['ASCSubscriptionId']
                    $null = $PSBoundParameters.Remove('ASCSubscriptionId')
                }

                If ($PSBoundParameters['Alerts']) {
                    $DataConnector.AlertState = $PSBoundParameters['Alerts']
                    $null = $PSBoundParameters.Remove('Alerts')
                }
                $null = $PSBoundParameters.Remove('AzureSecurityCenter')
            }
            if ($DataConnector.Kind -eq 'AmazonWebServicesCloudTrail') {
                If ($PSBoundParameters['AWSRoleArn']) {
                    $DataConnector.AWSRoleArn = $PSBoundParameters['AWSRoleArn']
                    $null = $PSBoundParameters.Remove('AWSRoleArn')
                }

                If ($PSBoundParameters['Log']) {
                    $DataConnector.LogState = $PSBoundParameters['Log']
                    $null = $PSBoundParameters.Remove('Log')
                }
                $null = $PSBoundParameters.Remove('AWSCloudTrail')            
            }
            if ($DataConnector.Kind -eq 'AmazonWebServicesS3') {
                If ($PSBoundParameters['AWSRoleArn']) {
                    $DataConnector.AWSRoleArn = $PSBoundParameters['AWSRoleArn']
                    $null = $PSBoundParameters.Remove('AWSRoleArn')
                }

                If ($PSBoundParameters['Log']) {
                    $DataConnector.LogState = $PSBoundParameters['Log']
                    $null = $PSBoundParameters.Remove('Log')
                }
                
                If ($PSBoundParameters['SQSURL']) {
                    $DataConnector.SqsUrl = $PSBoundParameters['SQSURL']
                    $null = $PSBoundParameters.Remove('SQSURL')
                }
                If ($PSBoundParameters['DetinationTable']) {
                    $DataConnector.DestinationTable = $PSBoundParameters['DetinationTable']
                    $null = $PSBoundParameters.Remove('DetinationTable')
                }
                $null = $PSBoundParameters.Remove('AWSS3')
            }
            if ($DataConnector.Kind -eq 'GenericUI') {
                If ($PSBoundParameters['UiConfigTitle']) {
                    $DataConnector.ConnectorUiConfigTitle = $PSBoundParameters['UiConfigTitle']
                    $null = $PSBoundParameters.Remove('UiConfigTitle')
                }
                If ($PSBoundParameters['UiConfigPublisher']) {
                    $DataConnector.ConnectorUiConfigPublisher = $PSBoundParameters['UiConfigPublisher']
                    $null = $PSBoundParameters.Remove('UiConfigPublisher')
                }        
                If ($PSBoundParameters['UiConfigDescriptionMarkdown']) {
                    $DataConnector.ConnectorUiConfigDescriptionMarkdown = $PSBoundParameters['UiConfigDescriptionMarkdown']
                    $null = $PSBoundParameters.Remove('UiConfigDescriptionMarkdown')
                }
                If ($PSBoundParameters['UiConfigCustomImage']) {
                    $DataConnector.ConnectorUiConfigCustomImage = $PSBoundParameters['UiConfigCustomImage']
                    $null = $PSBoundParameters.Remove('UiConfigCustomImage')
                }
                If ($PSBoundParameters['UiConfigGraphQueriesTableName']) {
                    $DataConnector.ConnectorUiConfigGraphQueriesTableName = $PSBoundParameters['UiConfigGraphQueriesTableName']
                    $null = $PSBoundParameters.Remove('UiConfigGraphQueriesTableName')
                }
                If ($PSBoundParameters['UiConfigGraphQuery']) {
                    $DataConnector.ConnectorUiConfigGraphQuery = $PSBoundParameters['UiConfigGraphQuery']
                    $null = $PSBoundParameters.Remove('UiConfigGraphQuery')
                }
                If ($PSBoundParameters['UiConfigSampleQuery']) {
                    $DataConnector.ConnectorUiConfigSampleQuery = $PSBoundParameters['UiConfigSampleQuery']
                    $null = $PSBoundParameters.Remove('UiConfigSampleQuery')
                }
                If ($PSBoundParameters['UiConfigDataType']) {
                    $DataConnector.ConnectorUiConfigDataType = $PSBoundParameters['UiConfigDataType']
                    $null = $PSBoundParameters.Remove('UiConfigDataType')
                }
                If ($PSBoundParameters['UiConfigConnectivityCriterion']) {
                    $DataConnector.ConnectorUiConfigConnectivityCriterion = $PSBoundParameters['UiConfigConnectivityCriterion']
                    $null = $PSBoundParameters.Remove('UiConfigConnectivityCriterion')
                }
                If ($PSBoundParameters['AvailabilityIsPreview']) {
                    $DataConnector.AvailabilityIsPreview = $PSBoundParameters['AvailabilityIsPreview']
                    $null = $PSBoundParameters.Remove('AvailabilityIsPreview')
                }
                If ($PSBoundParameters['AvailabilityStatus']) {
                    $DataConnector.AvailabilityStatus = $PSBoundParameters['AvailabilityStatus']
                    $null = $PSBoundParameters.Remove('AvailabilityStatus')
                }
                If ($PSBoundParameters['PermissionResourceProvider']) {
                    $DataConnector.PermissionResourceProvider = $PSBoundParameters['PermissionResourceProvider']
                    $null = $PSBoundParameters.Remove('PermissionResourceProvider')
                }
                If ($PSBoundParameters['PermissionCustom']) {
                    $DataConnector.DestinationTable = $PSBoundParameters['PermissionCustom']
                    $null = $PSBoundParameters.Remove('PermissionCustom')
                }
                If ($PSBoundParameters['UiConfigInstructionStep']) {
                    $DataConnector.ConnectorUiConfigInstructionStep = $PSBoundParameters['UiConfigInstructionStep']
                    $null = $PSBoundParameters.Remove('UiConfigInstructionStep')
                }
            }
    
            $null = $PSBoundParameters.Add('DataConnector', $DataConnector)
            Az.SecurityInsights.internal\Update-AzSentinelDataConnector @PSBoundParameters
        }
        catch {
            throw
        }
    }
}
# SIG # Begin signature block
# MIInqgYJKoZIhvcNAQcCoIInmzCCJ5cCAQExDzANBglghkgBZQMEAgEFADB5Bgor
# BgEEAYI3AgEEoGswaTA0BgorBgEEAYI3AgEeMCYCAwEAAAQQH8w7YFlLCE63JNLG
# KX7zUQIBAAIBAAIBAAIBAAIBADAxMA0GCWCGSAFlAwQCAQUABCBCjsnn4gCvHdeW
# ezK7o+lXdMnPPh57Xnl6GItBZ6O096CCDYEwggX/MIID56ADAgECAhMzAAACzI61
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
# BgEEAYI3AgELMQ4wDAYKKwYBBAGCNwIBFTAvBgkqhkiG9w0BCQQxIgQgUNHDiy7M
# 3Jd5QXa4+uOPh6nJkXFk6+AKSXnQB4OC/zIwQgYKKwYBBAGCNwIBDDE0MDKgFIAS
# AE0AaQBjAHIAbwBzAG8AZgB0oRqAGGh0dHA6Ly93d3cubWljcm9zb2Z0LmNvbTAN
# BgkqhkiG9w0BAQEFAASCAQBk+BoyXJpZFt0RWGEWhccjLDToZItp92JPla7HFd5v
# XU60jSDC9JHLf+AIP4XPWbXXdPHA7n7XgGhO+TDai1oc81LSZP4RypsxbPka2mXL
# UCskm0Lec+qgtFPbuceNTmqG/+uTFVCVRCfq64YlwdWwnH+O14GQ0RH2agxzCHvx
# jQ/0Fj2/TAeq70Vdhw9JAzU1VSGNLa30t/hLCxfxtHgpmWt3bYvojmSFbUAQ4OnB
# 9k45tfV/1dQkrVvv7DM4c7zko1Y+sxK/n36kLPRBWCey1+Ec5DfSij0KH2iP56J0
# njLkxi1CN+kdC3+JbbZnWLXTd2u4VQ7Xnd6fNcwTfbFFoYIXCTCCFwUGCisGAQQB
# gjcDAwExghb1MIIW8QYJKoZIhvcNAQcCoIIW4jCCFt4CAQMxDzANBglghkgBZQME
# AgEFADCCAVUGCyqGSIb3DQEJEAEEoIIBRASCAUAwggE8AgEBBgorBgEEAYRZCgMB
# MDEwDQYJYIZIAWUDBAIBBQAEIE30pkzhkuyVespLW9nrLexuy8Ckb1ylHU7aM9is
# nu3yAgZjKetB2UgYEzIwMjIxMDE3MDczNDQ1LjcxOFowBIACAfSggdSkgdEwgc4x
# CzAJBgNVBAYTAlVTMRMwEQYDVQQIEwpXYXNoaW5ndG9uMRAwDgYDVQQHEwdSZWRt
# b25kMR4wHAYDVQQKExVNaWNyb3NvZnQgQ29ycG9yYXRpb24xKTAnBgNVBAsTIE1p
# Y3Jvc29mdCBPcGVyYXRpb25zIFB1ZXJ0byBSaWNvMSYwJAYDVQQLEx1UaGFsZXMg
# VFNTIEVTTjo0RDJGLUUzREQtQkVFRjElMCMGA1UEAxMcTWljcm9zb2Z0IFRpbWUt
# U3RhbXAgU2VydmljZaCCEVwwggcQMIIE+KADAgECAhMzAAABsKHjgzLojTvAAAEA
# AAGwMA0GCSqGSIb3DQEBCwUAMHwxCzAJBgNVBAYTAlVTMRMwEQYDVQQIEwpXYXNo
# aW5ndG9uMRAwDgYDVQQHEwdSZWRtb25kMR4wHAYDVQQKExVNaWNyb3NvZnQgQ29y
# cG9yYXRpb24xJjAkBgNVBAMTHU1pY3Jvc29mdCBUaW1lLVN0YW1wIFBDQSAyMDEw
# MB4XDTIyMDMwMjE4NTE0MloXDTIzMDUxMTE4NTE0Mlowgc4xCzAJBgNVBAYTAlVT
# MRMwEQYDVQQIEwpXYXNoaW5ndG9uMRAwDgYDVQQHEwdSZWRtb25kMR4wHAYDVQQK
# ExVNaWNyb3NvZnQgQ29ycG9yYXRpb24xKTAnBgNVBAsTIE1pY3Jvc29mdCBPcGVy
# YXRpb25zIFB1ZXJ0byBSaWNvMSYwJAYDVQQLEx1UaGFsZXMgVFNTIEVTTjo0RDJG
# LUUzREQtQkVFRjElMCMGA1UEAxMcTWljcm9zb2Z0IFRpbWUtU3RhbXAgU2Vydmlj
# ZTCCAiIwDQYJKoZIhvcNAQEBBQADggIPADCCAgoCggIBAJzGbTsM19KCnQc5RC7V
# oglySXMKLut/yWWPQWD6VAlJgBexVKx2n1zgX3o/xA2ZgZ/NFGcgNDRCJ7mJiOeW
# 7xeHnoNXPlg7EjYWulfk3oOAj6a7O15GvckpYsvLcx+o8Se8CrfIb40EJ8W0Qx4T
# IXf0yDwAJ4/qO94dJ/hGabeJYg4Gp0G0uQmhwFovAWTHlD1ci+sp36AxT9wIhHqw
# /70tzMvrnDF7jmQjaVUPnjOgPOyFWZiVr7e6rkSl4anT1tLv23SWhXqMs14wolv4
# ZeQcWP84rV2Frr1KbwkIa0vlHjlv4xG9a6nlTRfo0CYUQDfrZOMXCI5KcAN2BZ6f
# Vb09qtCdsWdNNxB0y4lwMjnuNmx85FNfzPcMZjmwAF9aRUUMLHv626I67t1+dZoV
# PpKqfSNmGtVt9DETWkmDipnGg4+BdTplvgGVq9F3KZPDFHabxbLpSWfXW90MZXOu
# FH8yCMzDJNUzeyAqytFFyLZir3j4T1Gx7lReCOUPw1puVzbWKspV7ModZjtN/IUW
# dVIdk3HPp4QN1wwdVvdXOsYdhG8kgjGyAZID5or7C/75hyKQb5F0Z+Ee04uY9K+s
# DZ3l3z8TQZWAfYurbZCMWWnmJVsu5V4PR5PO+U6D7tAtMvMULNYibT9+sxVZK/WQ
# er2JJ9q3Z7ljFs4lgpmfc6AVAgMBAAGjggE2MIIBMjAdBgNVHQ4EFgQUOt8BJDcB
# Jm4dy6ASZHrXIEfWNj8wHwYDVR0jBBgwFoAUn6cVXQBeYl2D9OXSZacbUzUZ6XIw
# XwYDVR0fBFgwVjBUoFKgUIZOaHR0cDovL3d3dy5taWNyb3NvZnQuY29tL3BraW9w
# cy9jcmwvTWljcm9zb2Z0JTIwVGltZS1TdGFtcCUyMFBDQSUyMDIwMTAoMSkuY3Js
# MGwGCCsGAQUFBwEBBGAwXjBcBggrBgEFBQcwAoZQaHR0cDovL3d3dy5taWNyb3Nv
# ZnQuY29tL3BraW9wcy9jZXJ0cy9NaWNyb3NvZnQlMjBUaW1lLVN0YW1wJTIwUENB
# JTIwMjAxMCgxKS5jcnQwDAYDVR0TAQH/BAIwADATBgNVHSUEDDAKBggrBgEFBQcD
# CDANBgkqhkiG9w0BAQsFAAOCAgEA3XPih5sNtUfAyLnlXq6MZSpCh0TF+uG+nhIJ
# 44//cMcQGEViZ2N263NwvrQjCFOni/+oxf76jcmUhcKWLXk9hhd7vfFBhZZzcF5a
# Ns07Uligs24pveasFuhmJ4y82OYm1G1ORYsFndZdvF//NrYGxaXqUNlRHQlskV/p
# mccqO3Oi6wLHcPB1/WRTLJtYbIiiwE/uTFEFEL45wWD/1mTCPEkFX3hliXEypxXz
# dZ1k6XqGTysGAtLXUB7IC6CH26YygKQuXG8QjcJBAUG/9F3yNZOdbFvn7FinZyNc
# IVLxld7h0bELfQzhIjelj+5sBKhLcaFU0vbjbmf0WENgFmnyJNiMrL7/2FYOLsgi
# QDbJx6Dpy1EfvuRGsdL5f+jVVds5oMaKrhxgV7oEobrA6Z56nnWYN47swwouucHf
# 0ym1DQWHy2DHOFRRN7yv++zes0GSCOjRRYPK7rr1Qc+O3nsd604Ogm5nR9QqhOOc
# 2OQTrvtSgXBStu5vF6W8DPcsns53cQ4gdcR1Y9Ng5IYEwxCZzzYsq9oalxlH+ZH/
# A6J7ZMeSNKNkrXPx6ppFXUxHuC3k4mzVyZNGWP/ZgcUOi2qV03m6Imytvi1kfGe6
# YdCh32POgWeNH9lfKt+d1M+q4IhJLmX0E2ZZICYEb9Q0romeMX8GZ+cbhuNsFimJ
# ga/fjjswggdxMIIFWaADAgECAhMzAAAAFcXna54Cm0mZAAAAAAAVMA0GCSqGSIb3
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
# MSYwJAYDVQQLEx1UaGFsZXMgVFNTIEVTTjo0RDJGLUUzREQtQkVFRjElMCMGA1UE
# AxMcTWljcm9zb2Z0IFRpbWUtU3RhbXAgU2VydmljZaIjCgEBMAcGBSsOAwIaAxUA
# Ap4vkN3fD5FNBVYZklZeS/JFPBiggYMwgYCkfjB8MQswCQYDVQQGEwJVUzETMBEG
# A1UECBMKV2FzaGluZ3RvbjEQMA4GA1UEBxMHUmVkbW9uZDEeMBwGA1UEChMVTWlj
# cm9zb2Z0IENvcnBvcmF0aW9uMSYwJAYDVQQDEx1NaWNyb3NvZnQgVGltZS1TdGFt
# cCBQQ0EgMjAxMDANBgkqhkiG9w0BAQUFAAIFAOb3WGUwIhgPMjAyMjEwMTcwODI4
# MjFaGA8yMDIyMTAxODA4MjgyMVowdDA6BgorBgEEAYRZCgQBMSwwKjAKAgUA5vdY
# ZQIBADAHAgEAAgIXUTAHAgEAAgIRszAKAgUA5vip5QIBADA2BgorBgEEAYRZCgQC
# MSgwJjAMBgorBgEEAYRZCgMCoAowCAIBAAIDB6EgoQowCAIBAAIDAYagMA0GCSqG
# SIb3DQEBBQUAA4GBAEEgDgaWoHP+iG1BgIHSzq5i6M806TswEoaX+esO9YC/1bit
# f4F/CywyXGRBSaKR0ER0zbPlrhs9wHUXwB8PaTg7xyZqHC9GkfsrfbhNc60cfnR3
# UtcMiWIKKA3J/P8dOhaHJAmO7DIYnxH3vBDJZwh2h7slOTu98OoVZNuIR5NHMYIE
# DTCCBAkCAQEwgZMwfDELMAkGA1UEBhMCVVMxEzARBgNVBAgTCldhc2hpbmd0b24x
# EDAOBgNVBAcTB1JlZG1vbmQxHjAcBgNVBAoTFU1pY3Jvc29mdCBDb3Jwb3JhdGlv
# bjEmMCQGA1UEAxMdTWljcm9zb2Z0IFRpbWUtU3RhbXAgUENBIDIwMTACEzMAAAGw
# oeODMuiNO8AAAQAAAbAwDQYJYIZIAWUDBAIBBQCgggFKMBoGCSqGSIb3DQEJAzEN
# BgsqhkiG9w0BCRABBDAvBgkqhkiG9w0BCQQxIgQgWQPS7vg/6MCbSqmFfY0B0Hyv
# jxZGi19E27EWUBXBjDswgfoGCyqGSIb3DQEJEAIvMYHqMIHnMIHkMIG9BCDNBgtD
# d8uf9KTjGf1G67IfKmcNFJmeWTd6ilAy5xWEoDCBmDCBgKR+MHwxCzAJBgNVBAYT
# AlVTMRMwEQYDVQQIEwpXYXNoaW5ndG9uMRAwDgYDVQQHEwdSZWRtb25kMR4wHAYD
# VQQKExVNaWNyb3NvZnQgQ29ycG9yYXRpb24xJjAkBgNVBAMTHU1pY3Jvc29mdCBU
# aW1lLVN0YW1wIFBDQSAyMDEwAhMzAAABsKHjgzLojTvAAAEAAAGwMCIEIMbTwp5D
# ZFRdA0oasTjDH7RTE5KrxAvcJIUnSU/W2FlhMA0GCSqGSIb3DQEBCwUABIICAB50
# FsKuGNajkNzxRxWzHX6Pc2Yz6bkgsaVNw9d1zf82ahAti/SG/O7n63tvbtuI7cnS
# 9DS2+P7VuwW/hbIOc+8YPonpVJTpZcQjxQqLsex/b1cTa5cj0sc1GpvG5YMDIZwB
# aKQxOo/+7qgtHAFBPUFyD4vIGdStdZOZQF7G7iIQ6+UJamwGgfmFLpIaSD7io3HR
# KQU6GVBVtHMzUN7b9MLAEzO56g+hQ/CKycbc9gREPw4rqQm1T3vlpft+u/RcoLLx
# C905WfvkvLi1ds3itorteBuoMpIGG0Yal9EdWLHVLOq2hWJ5Upwo69tN/9QpWbSi
# twpP/XgFbETWL5JgZpcm7VYxLVbrHdcLMMcNzJK+ESEED2K2MOBAASb9Yu9/0rej
# W6vK9r58/+Rcy7MHg87UGfLdhNnMfeUZabItluYzayJGDvPCVcFgF4SmuvyqBJoo
# pYpfHkhZAVrlceZA2jxk0C5psJxKhv+4cMwJIgFdBn2/dqgdIrhGLXB0AJumu1TZ
# 808xFzteOxfPQjfKUX0mqKFzhagVuo1TVkFKCgLeIZsn6MgnJK+cEaXtxTSKSU/k
# 8V8xY5kTAFxCCknabKBxJk2/Mn0M92L3KNvVWrHPft9vFsVXC3uopywSFgLEk2Yk
# ieSbPwqz1oJkibQZPB0Gocdt0qNsVTY5RTjXnoC1
# SIG # End signature block
