# Taken from https://github.com/jrudley/vmssLBNatIIS/blob/master/vmssLBNatIIS/Scripts/deploy.ps1

mkdir c:\temp -Force
$startDTM = (Get-Date)
Add-WindowsFeature -Name web-server, Web-Asp-Net45, Web-Mgmt-Console

rm -Path c:\inetpub\wwwroot\* -Recurse

wget -uri https://raw.githubusercontent.com/asote/AzureDemo-VMSS-Windows/master/configurations/tests/Default.aspx -OutFile C:\inetpub\wwwroot\Default.aspx
wget -uri https://raw.githubusercontent.com/asote/AzureDemo-VMSS-Windows/master/configurations/tests/Default.aspx.cs -OutFile c:\inetpub\wwwroot\Default.aspx.cs
wget -uri https://raw.githubusercontent.com/asote/AzureDemo-VMSS-Windows/master/configurations/tests/web.config -OutFile c:\inetpub\wwwroot\Web.config

$endDTM = (Get-Date)

"Time to run deploy.ps1: $(($endDTM-$startDTM).totalseconds) seconds" | out-file c:\temp\timetaken.txt