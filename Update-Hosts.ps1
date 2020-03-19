#Requires -RunAsAdministrator

function Add-to-Hosts($hostName) { 

    $filePath = "$env:windir\System32\drivers\etc\hosts"
    $selectedString = Select-String -Path $filePath -Pattern $hostName

    if ($null -ne $selectedString) {
        Write-Output "$hostName exists"
    }
    else {
        Add-Content -Path $filePath -Value "127.0.0.1`t${hostName}" -Force
    }
}

Add-to-Hosts gitbitext-mysql
Add-to-Hosts gitbitext-kafka
Add-to-Hosts gitbitext-zoo
Add-to-Hosts gitbitext-redis


