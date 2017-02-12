# Install Exchange Server 2010 SP3
Set-Location -Path C:\Install\Exchange2010SP3\
Setup.com /r:M,C,U,HT

# Install Exchange Server 2010 SP3 Update Rollup 14
Set-Location -Path C:\Install\
.\Exchange2010-KB3151097-x64-en.msp /m:upgrade

Restart-Computer -Force