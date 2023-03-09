[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12
## Run this first time
##Set-ExecutionPolicy RemoteSigned

## Get credencials (MFA not available with this script)
$cred = Get-Credential -username a119055_tr1@amerisourcebergen.com -Message "Need password."

## Connect to AzureAD
Import-Module AzureAD 
Connect-AzureAD -Credential $cred`

##Connect to Microsoft Teams
Import-Module MicrosoftTeams
Connect-MicrosoftTeams -Credential $cred

##Connect to MSOL service
Import-Module MSOnline
Connect-MsolService -Credential $cred

##Connect Exchange Online
Import-Module ExchangeOnlineManagement
Connect-ExchangeOnline -Credential $cred
