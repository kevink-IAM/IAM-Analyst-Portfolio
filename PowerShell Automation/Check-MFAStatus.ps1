# SCRIPT GOAL: Audit the MFA Status for all users in Entra ID using Microsoft Graph.
# This script is a common operational task used for compliance and security reviews.

# 1. Connect to Microsoft Graph with necessary permissions
# The 'Policy.Read.All' scope is required to read MFA policy status.
Connect-MgGraph -Scopes "User.Read.All", "Policy.Read.All" -ErrorAction Stop

Write-Host "Connection successful. Starting MFA Status Audit..."

# 2. Define the function to get the MFA method status for a user
function Get-MfaMethodStatus {
    param(
        [Parameter(Mandatory=$true)]
        [string]$UserId
    )
    
    # Check if the user has any authentication methods enabled (e.g., phone, app)
    $authMethods = Get-MgUserAuthenticationMethod -UserId $UserId -ErrorAction SilentlyContinue
    
    if ($null -eq $authMethods -or $authMethods.Count -eq 0) {
        return "No Methods Registered"
    } else {
        # Check the details of the authentication methods
        $isMfaConfigured = $authMethods | Where-Object { 
            $_.OdataType -like "*Fido2*" -or 
            $_.OdataType -like "*MicrosoftAuthenticator*" -or 
            $_.OdataType -like "*Sms*" -or 
            $_.OdataType -like "*TemporaryAccessPass*"
        }

        if ($isMfaConfigured) {
            return "Configured"
        } else {
            return "Methods Registered, but not MFA capable"
        }
    }
}

# 3. Retrieve all Entra ID users
$users = Get-MgUser -All -Property DisplayName, UserPrincipalName, Id

Write-Host "Processing $($users.Count) users..."

# 4. Process each user to determine their MFA status
$auditReport = @()
foreach ($user in $users) {
    # Check if a user ID is present before calling the function
    if ($user.Id) {
        $mfaStatus = Get-MfaMethodStatus -UserId $user.Id
    } else {
        $mfaStatus = "Error: Missing User ID"
    }

    $auditReport += [PSCustomObject]@{
        DisplayName = $user.DisplayName
        UserPrincipalName = $user.UserPrincipalName
        MFA_Status = $mfaStatus
    }
}

# 5. Export the final report to the Desktop
$fileName = "MFA_Audit_Report_$((Get-Date).ToString('yyyyMMdd')).csv"
$outputPath = "$([Environment]::GetFolderPath("Desktop"))\$fileName"
$auditReport | Export-Csv $outputPath -NoTypeInformation

Write-Host "--------------------------------------------------------"
Write-Host "Audit Complete. Report saved to: $outputPath"
Write-Host "--------------------------------------------------------"

# 6. Disconnect the session
Disconnect-MgGraph