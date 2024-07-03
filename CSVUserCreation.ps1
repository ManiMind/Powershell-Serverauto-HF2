# Laver en variabel ud fra CSV fil
$ADUsers = Import-Csv "C:\Users\Administrator\CSV files\UserCSV.txt" -Delimiter ";"

# Definerer UPN
$UPN = "G4AD.H2.SKYLAB.ACADEMY"

# Loop gennem Users i CSV og laver brugere
foreach ($User in $ADUsers) {
    try {
        $UserParams = @{
            SamAccountName      = $User.username
            UserPrincipalName   = "$($User.username)@$UPN"
            Name                = "$($User.firstname) $($User.lastname)"
            Giveame             = $User.lastname
            Initial             = $User.initials
            Enabled             = $true
            DisplayName         = "$($User.firstname) $($User.lastname)"
            Path                = $User.ou
            EmailAddress        = $User.Email
            AccountPassword     =(ConvertTo-SecureString $User.password -AsPlainText -Force)
        }
        # Check om brugeren allerede findes i AD
        if (Get-ADUser -Filter "SamAccountName -eq '$($User.username)'") {
            # Giv advarsel hvis bruger allerede findes i AD
            Write-Host "A user with username $($User.username) already exists in Active Directory." -ForegroundColor Yellow 
        }
        # Hvis brugeren ikke allerede findes:
        Else {
            # Lav User med parametre i UserParams variabel
            New-ADUser @UserParams

            #Message
            Write-Host "The user $($User.username) is created." -ForegroundColor Green
        }
    }
    Catch {
        #Handle errors
        Write-Host "Failed to create user $($User.username) - $_" -ForegroundColor Red
    }
}