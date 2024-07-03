$Parameters = @{
    Name            = (Read-Host "input share folder")
    Path            = (Read-Host "input share path")
    ChangeAccess    = 'G4AD.H2.SKYLAB.ACADEMY\Domain Users' # Definerer Read Write Access til users
    FullAccess      = 'G4AD.H2.SKYLAB.ACADEMY\Domain Admins' # Definerer FullAccess til admins
}
New-SmbShare @Parameters