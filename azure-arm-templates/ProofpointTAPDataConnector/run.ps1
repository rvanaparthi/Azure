# Input bindings are passed in via param block.
param($TriggerMetadata, $Timer) 


# Write out the blob name and size to the information log.
Write-Host "PowerShell Blob trigger function Processed blob! Name: $($TriggerMetadata.Name) Size: $($InputBlob.Length) bytes"

# The 'IsPastDue' porperty is 'true' when the current function invocation is later than scheduled.
if ($Timer.IsPastDue) {
    Write-Host "PowerShell timer is running late!"
}


$username = $env:apiusername
$password = $env:apipassword
$uri = $env:uri

Write-Host "$env:workspaceID"
Write-Host "$env:workspaceKey"
Write-Host "$username"
Write-Host "$password"

