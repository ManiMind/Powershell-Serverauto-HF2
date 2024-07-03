$DirectoryParams = @{ # Laver en variabel med host input til New-Item
    name = (Read-Host "input folder name") # Beder om navn
    path = (Read-Host "input folder path") # Beder om sti
    ItemType = Directory # Definerer at der skal laves en mappe
}
New-Item $DirectoryParams # Bruger Variabel til at udføre New-Item