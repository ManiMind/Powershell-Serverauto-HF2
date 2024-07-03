$ADOUHT =@{ #Laver Hashtabel med navn og path til 
    Name = Read-Host "Please enter OU name" # Angiver navn til OU via Read-Host
    Path = (Read-Host "Please enter OU path with format: OU=ouname1,OU=ouname2,etc.") + ",DC=G4AD,DC=H2,DC=SKYLAB,DC=ACADEMY" # Angiver sti til oprættelse af OU via Read-Host
}
New-ADOrganizationalUnit @ADOUHT # Laver ny OU med variabler defineret i ADOUHT