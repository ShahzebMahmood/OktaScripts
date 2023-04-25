# OktaScripts
Okta Scriptt

Hey, 

To run both scripts you will see to variables that will need you Okta domain and Okta API token

In Okta Deactivation script you will need to enter you details below and amend

$apiKey = "ADD YOUR OKTA API TOKEN"
$userID = "ADD THE USERNAME OF THE USER YOU WANT TO DEACTIVATE"

$url = "https://ADD-YOUR-OKTA-DOMAIN/api/v1/users/$userID/lifecycle/deactivate"

You may notice that the script will run please check okta it will deactivate the account. This has been test a few times on my own dev account


For the Okta Create user you will need to add the below information


$apiKey = "ADD YOUR OKTA API TOKEN"

$userEmail = "ADD EMAIL ADDRESS"
$userFirstName = "FIRST NAME"
$userLastName = "USERS LASTNAME"
$userPassword = "CREATE A PASSWORD"


$result = Invoke-RestMethod -Method Post -Uri "https://ADD-YOUR-OKTA-DOMAIN/api/v1/users" -Headers $header -Body ($body | ConvertTo-Json)


Once you have filled out these information, run the script and it should create a user in your okta instance
