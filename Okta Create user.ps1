# Enter your Okta API token and Okta domain below
$apiKey = "ADD YOUR OKTA API TOKEN"

# Enter the user details below
$userEmail = "ADD EMAIL ADDRESS"
$userFirstName = "FIRST NAME"
$userLastName = "USERS LASTNAME"
$userPassword = "CREATE A PASSWORD"

# Create a header for the API request
$header = @{
    "Authorization" = "SSWS $apiKey"
    "Accept" = "application/json"
    "Content-Type" = "application/json"
}

# Create a body for the API request
$body = @{
    "profile" = @{
        "email" = $userEmail
        "firstName" = $userFirstName
        "lastName" = $userLastName
        "login" = $userEmail
    }
    "credentials" = @{
        "password" = @{
            "value" = $userPassword
        }
    }
    "groupIds" = @()
}

# Make an API request to create the user in Okta
$result = Invoke-RestMethod -Method Post -Uri "https://ADD-YOUR-OKTA-DOMAIN/api/v1/users" -Headers $header -Body ($body | ConvertTo-Json)

# Check if the user was created successfully and display the user details
if ($result.status -eq "ACTIVE") {
    Write-Host "User created successfully:" -ForegroundColor Green
    Write-Host "Name: $($result.profile.firstName) $($result.profile.lastName)"
    Write-Host "Email: $($result.profile.email)"
} else {
    Write-Host "User creation failed with status: $($result.status)" -ForegroundColor Red
}

