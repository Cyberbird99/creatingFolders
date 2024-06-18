# It's a PowrShell code to create folders.
# We can manually create folders but imagine you create tens of folders
# Then it's much easier to put your folder names in a text file and automate creating files process.
# And whenever you append new folder names, those which already exist will be ignored and
# new ones will be created.
# This can be done in different ways in PowerShell

# First I'll make a text file with folder names 
# foldersList.text

$filePath = "C:\PowerShellProjects\creatingFolders\Data" 
$foldersPath = "C:\PowerShellProjects\creatingFolders\Data\Share"

$foldersList = Get-Content -Path $filePath

# It's possible to create folders one by one typing index number
New-Item -Path "$foldersPath" -Name $foldersList[0] -ItemType Directory
New-Item -Path "$foldersPath" -Name $foldersList[1] -ItemType Directory
New-Item -Path "$foldersPath" -Name $foldersList[2] -ItemType Directory
New-Item -Path "$foldersPath" -Name $foldersList[3] -ItemType Directory
New-Item -Path "$foldersPath" -Name $foldersList[4] -ItemType Directory

# But it's much easier to automate the file creating
# using foreach method
foreach($name in $foldersList) {
    if((Test-Path -Path "$foldersPath\$name") -eq $false) {
        New-Item -Path "$foldersPath" -Name $name -ItemType Directory
    }else {
        Write-Output "Folder exists"
    }
}


