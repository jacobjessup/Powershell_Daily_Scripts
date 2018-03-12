# This function will get the current version of the host powershell engine
function get-version {

    $version = $PSVersionTable.PSVersion.Major
    return $version

}

# Use this function to write the Powershell Version 1 of your script
function powerVersion1{

    Write-Host 'Powershell Version 1 script'

}

# Use this function to write the Powershell Version 2 of your script
function powerVersion2{

    Write-Host 'Powershell Version 2 script'

}

# Use this function to write the Powershell Version 3 of your script
function powerVersion3{

    Write-Host 'Powershell Version 3 script'

}

# Use this function to write the Powershell Version 4 of your script
function powerVersion4{

    Write-Host 'Powershell Version 4 script'

}

# Use this function to write the Powershell Version 5 of your script
function powerVersion5{

    Write-Host 'Powershell Version 5 script'

}

# Where all the magic happens
function main($version){


if($version -eq 1){

    powerVersion1

}
elseif($version -eq 2){

    powerVersion2

}
elseif($version -eq 3){

    powerVersion3

}
elseif($version -eq 4){

    powerVersion4

}
elseif($version -eq 5){

    powerVersion5

}
}

# Start everything
main(get-version)
