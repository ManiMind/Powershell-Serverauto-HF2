New-ADGroup -Name "DomainUsers" -SamAccountName DomainUsers -GroupCategory Security -GroupScope Global -DisplayName "DomainUsers" -Path "CN=Users,DC=G4AD,DC=H2,DC=SKYLAB,DC=ACADEMY" -Description "Members of this group are Domain Users"