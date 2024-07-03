$ChangeUserParams = (Read-Host "input new username") # input new username into a variable
$UPN = "G4AD.H2.SKYLAB.ACADEMY" # Defines UPN
Set-ADUser -Identity (Read-Host "input current user name") -Replace @{SamAccountName=$ChangeUserParams;UserPrincipalName=$ChangeUserParams + "@" + $UPN} # Gets current username, and replaces it with username in variable