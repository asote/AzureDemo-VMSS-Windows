Add-WindowsFeature Web-Server,Web-Asp-Net45,NET-Framework-Features
Add-Content -Path "C:\inetpub\wwwroot\Default.htm" -Value $($env:computername)