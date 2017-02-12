# Install Exchange Server 2010 SP3
try {
    Set-Location -Path C:\Install\Exchange2010SP3\
    Setup.com /r:M,C,U,HT
}
catch {
    Write-Error "Exchagne 2010 SP3 installation failed..."
}

# Install Exchange Server 2010 SP3 Update Rollup 14
try {
    Set-Location -Path C:\Install\
    .\Exchange2010-KB3151097-x64-en.msp /m:upgrade
}
catch {
    Write-Error "Exchange 2010 SP3 Update Rollup 14 installation failed..."
}

# Restart the machine to complete the installation
try {
    Restart-Computer -Force
}
catch {
    Write-Error "Restart failed, please reboot manually..."
}