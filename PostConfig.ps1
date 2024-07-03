$ADINSTALLHT =@{ # Laver en variabel kaldet ADINSTALLHT
    String = 'Datait2024!' # Putter en string med Datait2024! i variablen
    AsPlainText = $True # Er unedvændig da ConvertTo-SecureString allerede antager at det er plaintext
    Force = $True # Overrider fil konflikter
}
$SECUREPW = ConvertTo-SecureString @ADINSTALLHT # Konverterer strengen fra ADINSTALLHT til SecureString så den kan bruges som password
$ADHT = @{ #laver variabel kaldet ADHT, til at give parametre til Install-ADDSForest cmdlet
    DomainName = 'G4AD.H2.SKYLAB.ACADEMY' # Navn på domænet, aka Root til vores forest
    SafeModeAdministratorPassword = $SECUREPW # Refererer til tidligere defineret password
    InstallDNS = $True # Installerer DNS
    DomainMode = 'WinThreshold' # Sætter DomainMode til seneste udgave
    ForestMode = 'WinThreshold' # Sætter ForestMode til seneste udgave
    Force = $True # Overrider fil konflikter
    NoRebootOnCompletion = $True # Stopper automatisk reboot
    WarningAction = 'SilentlyContinue' # cmdlet fortsætter uden popup igennem advarsler
}
Install-ADDSForest @ADHT #Installerer ADDS og forest med tidligere defineret parametre gemt i variablen