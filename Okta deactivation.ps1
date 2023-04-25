$apiKey = "ADD YOUR OKTA API TOKEN"
$userID = "ADD USERS USERNAME YOU WANT TO DEACTIVATE"

$headers = @{
    "Accept" = "application/json"
    "Content-Type" = "application/json"
    "Authorization" = "SSWS $apiKey"
}

$body = @{
    "activate" = $false
} | ConvertTo-Json

$url = "https://ADD-YOUR-OKTA-DOMAIN/api/v1/users/$userID/lifecycle/deactivate"

$response = Invoke-RestMethod -Uri $url -Method Post -Headers $headers -Body $body

if ($response.status -eq "DEPROVISIONED") {
    Write-Output "User $userID has been successfully deactivated."
} else {
    Write-Output "Failed to deactivate user $userID."
}
