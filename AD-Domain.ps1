$FEATUREHT = @{ # Laver en variabel der indeholder parametre til Install-WindowsFeature cmdlet
    Name = 'AD-Domain-Services' # Definerer at ADDS skal installeres
    IncludeManagementTools = $True # Definerer at management tools til featuren kommer med (ikke standard, så skal specificeres)
    WarningAction = 'SilentlyContinue' # cmdlet fortsætter uden popup igennem advarsler
}
Install-WindowsFeature @FEATUREHT # Kører Install-WindowsFeature cmdlet med variabel der indeholder parametre