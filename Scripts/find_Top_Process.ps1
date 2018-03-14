# This script will find the top 5 processes of a local or remote computer.
# Used as a quick inspection if multiple computers are running slow and
# all of them are slowed by the same process/es.
# This script also allows for a Service status search on a local or remote
# computer.

# Created by: Jacob Jessup (technoFarmer)
# Date: 03/13/2018

#Functions
function localProcComputer(){
    Get-Process | Sort-Object WorkingSet -Descending | Select-Object -First 5
    $localOrRemoteServ = Read-Host ('Do you want see the status of a service on your computer or a remote computer? (L or R)')
    if($localOrRemoteServ -eq 'L'){
        localServiceStatus
    }
    elseif($localOrRemoteServ -eq 'R'){
        remoteServiceStatus
    }
}

function remoteProcComputer(){
    $computerName = Read-Host ("Please enter the remote workstation's computer name")

    Get-Process -ComputerName $computerName | Sort-Object WorkingSet -Descending |
        Select-Object -First 5
    $localOrRemoteServ = Read-Host ('Do you want see the status of a service on your computer or a remote computer? (L or R)')
    if($localOrRemoteServ -eq 'L'){
        localServiceStatus
    }
    elseif($localOrRemoteServ -eq 'R'){
        remoteServiceStatus
    }
}

function localServiceStatus(){
    $serviceName = Read-Host ('Please enter the full service name or with wildcard: (IE: BITS or BI* or BIT?)')

    Get-Service $serviceName | Sort-Object Status -Descending | Select-Object Status, Name, DisplayName | Format-Table -AutoSize
}

function remoteServiceStatus(){
    $computerName = Read-Host ("Please enter the remote workstation's computer name")
    $serviceName = Read-Host ('Please enter the full service name or with wildcard: (IE: BITS or BI* or BIT?)')

    Get-Service $serviceName -ComputerName $computerName | Sort-Object Status -Descending |
    Select-Object Status, Name, DisplayName | Format-Table -AutoSize
}

# start deciding
Write-Host ('This tool allows you to see the top 5 Processes and check Service status on a local or remote computer.')
Write-Host (' ')
Start-Sleep -s 1

$localOrRemoteProc = Read-Host ('Do you want see the top processes on your computer or a remote computer? (L or R)')

if($localOrRemoteProc -eq 'L'){
    localProcComputer
}
elseif($localOrRemoteProc -eq 'R'){
    remoteProcComputer
}
