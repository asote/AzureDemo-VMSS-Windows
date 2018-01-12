Add-WindowsFeature Web-Server,Web-Asp-Net45,NET-Framework-Features,Web-Mgmt-Console
Add-Content -Path "C:\inetpub\wwwroot\Default.htm" -Value $($env:computername)