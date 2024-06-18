# PowerShell is really a powerfull tool. 
# There's also another way for the same automation.
# just like in the previous file. We can use .ForEach without pipe.
# the code inside Curly brackets won't change

$filePath = "C:\PowerShellProjects\creatingFolders\Data" 
$foldersPath = "C:\PowerShellProjects\creatingFolders\Data\Share"

$foldersList = Get-Content -Path $filePath



$foldersList.ForEach(
    {
        if((Test-Path -Path "$foldersPath\$_") -eq $false){
            New-Item -Path "$foldersPath" -Name $_ -ItemType Directory
        }else{
            Write-Output "Folder exists"
        }
    }
)
