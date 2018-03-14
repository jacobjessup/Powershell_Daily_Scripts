# This script allows you to add a mapped SMB 3.0 drive in Powershell v4 and up.
# It will ask you what dirve letter and the path to the SMB dicrectory.
# It will also ask you if you want to delete a mapped drive if the user
# says they do not want to add a mapped drive.

# Created by Jacob Jessup (technoFarmer)
# Date: 03/12/2018


# Functions
function removeDriveFunc(){
    $removeDrive = Read-Host('Please input the drive letter you want to remove:
        (IE F:, Y:, Z:, etc)')

    Remove-SmbMapping -LocalPath $removeDrive
    write-host('Drive has been removed successfully.')
}

function mapDrive(){
    $addDriveLetter = Read-Host('Please input the drive letter that you want:
        (IE F:, Y:, Z:, etc.)')

    $pathToDrive = Read-Host('Please input the path to the SMB directory:
        (IE SMB is \\ServerName\FolderName)')

    New-SmbMapping -LocalPath $addDriveLetter -RemotePath $pathToDrive
    Write-Host(' ')
    Write-Host('Your new mapped drive is ' + $addDriveLetter + ' and is mapped to ' + $pathToDrive + ' correctly.')
}

# Start everything in motion.
Write-Host('Hello and I am guessing you want to map a drive or destroy one!!')
Write-Host(' ')
Start-Sleep -s 1
Write-Host('Just kidding of course you do otherwise you would not be here.')
Write-Host(' ')
Start-Sleep -s 1
$decideAdd = Read-Host('Do you want to add a mapped drive: (Y or N)')

if($decideAdd -eq 'Y'){
    mapDrive
}
elseif($decideAdd -eq 'N'){
    $decideRemove = Read-Host('Do you want to remove a mapped drive: (Y or N)')

    if($decideRemove -eq 'Y')
    {
        removeDriveFunc
    }
    elseif($decideRemove -eq 'N'){
        Write-Host('Then I am sorry you came by the wrong place and I hope you have a great day!!')
        Start-Sleep -s 3
    }
}
