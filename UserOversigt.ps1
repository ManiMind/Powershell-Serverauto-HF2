Get-ADUser -filter * -SearchBase "OU=fritaget.local,DC=G4AD,DC=H2,DC=SKYLAB,DC=ACADEMY" | Format-Table Name,SamAccountName,Enabled,DistinguishedName | Sort-Object -Descending DistinguishedName
# Henter Alle users og deres DistinguishedName med OU info
