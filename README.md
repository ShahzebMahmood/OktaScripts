Okta Scripts


Hey,


To run both scripts you will need to amend the variable to your own Okta domain and Okta API token
In the Okta Deactivation script, you will need to enter your Okta Credential details below

$apiKey = "ADD YOUR OKTA API TOKEN" $userID = "ADD THE USERNAME OF THE USER YOU WANT TO DEACTIVATE"
$url = "https://ADD-YOUR-OKTA-DOMAIN/api/v1/users/$userID/lifecycle/deactivate"

You may notice that the script will run, please check okta it should've deactivated the account. This has been tested a few times on my dev account



For the Okta Create user script you will need to add the below information

$apiKey = "ADD YOUR OKTA API TOKEN"
$userEmail = "ADD EMAIL ADDRESS" $userFirstName = "FIRST NAME" $userLastName = "USERS LASTNAME" $userPassword = "CREATE A PASSWORD"
$result = Invoke-RestMethod -Method Post -Uri "https://ADD-YOUR-OKTA-DOMAIN/api/v1/users" -Headers $header -Body ($body | ConvertTo-Json)


Once you have filled out this information, run the script and it should create a user in your Okta instance
