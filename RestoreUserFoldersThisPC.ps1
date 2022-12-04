<#
Restores user folders to the "This PC" view option in File Explorer.
#>


<# 
Creates the registry keys in HKCU to set the order of the user folders in "This PC" view in File Explorer.
#>

New-Item -Path HKCU:\SOFTWARE\Classes\CLSID\ -Name "{B4BFCC3A-DB2C-424C-B029-7FE99A87C641}\ShellFolder" -Force
$SortItems = "HKCU:\SOFTWARE\Classes\CLSID\{B4BFCC3A-DB2C-424C-B029-7FE99A87C641}\ShellFolder"
New-ItemProperty -Path "$SortItems" -Name SortOrderIndex -PropertyType DWORD -Value 00000000 -Force

<#
Deletes the DWORD HideIfEnabled for the relevant folders.
#>

$Desktop = "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\MyComputer\NameSpace\{B4BFCC3A-DB2C-424C-B029-7FE99A87C641}"
$Documents = "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\MyComputer\NameSpace\{d3162b92-9365-467a-956b-92703aca08af}"
$Downloads = "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\MyComputer\NameSpace\{088e3905-0323-4b02-9826-5d99428e115f}" 
$Music = "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\MyComputer\NameSpace\{3dfdf296-dbec-4fb4-81d1-6a3438bcf4de}"
$Pictures = "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\MyComputer\NameSpace\{24ad3ad4-a569-4530-98e1-ab02f9417aa8}"
$Videos = "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\MyComputer\NameSpace\{f86fa3ab-70d2-4fc7-9c99-fcbf05467f3a}"

Remove-ItemProperty -Path $Desktop -Name HideIfEnabled
Remove-ItemProperty -Path $Documents -Name HideIfEnabled
Remove-ItemProperty -Path $Downloads -Name HideIfEnabled
Remove-ItemProperty -Path $Music -Name HideIfEnabled
Remove-ItemProperty -Path $Videos -Name HideIfEnabled
Remove-ItemProperty -Path $Pictures -Name HideIfEnabled


  