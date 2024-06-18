# The alternative way to automate this process is 'Foreach-Object" cmdlet
# Type the variable containing folder names and pipe it

$filePath = "C:\PowerShellProjects\creatingFolders\Data" 
$foldersPath = "C:\PowerShellProjects\creatingFolders\Data\Share"

$foldersList = Get-Content -Path $filePath


$foldersList | ForEach-Object -Process {
    if((Test-Path -Path "$foldersPath\$_") -eq $false){
        New-Item -Path "$foldersPath" -Name $_ -ItemType Directory
    }else{
        Write-Output "Folder exists"
    }
}
