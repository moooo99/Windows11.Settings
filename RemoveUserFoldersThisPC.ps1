<#
Removes user folders to the "This PC" view option in File Explorer.
#>

<# 
Deletes the registry keys in HKCU to set the order of the user folders in "This PC" view in File Explorer.
#>

Remove-Item -Path "HKCU:\SOFTWARE\Classes\CLSID\{B4BFCC3A-DB2C-424C-B029-7FE99A87C641}" -Recurse -Force

<#
Creates the DWORD HideIfEnabled for the relevant folders.
#>

$ThisPCLocalDownloadsRegFolder = "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\MyComputer\NameSpace\{088e3905-0323-4b02-9826-5d99428e115f}"
$ThisPCMyMusicRegFolder = "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\MyComputer\NameSpace\{1CF1260C-4DD0-4ebb-811F-33C572699FDE}"
$ThisPCLocalPicturesRegFolder = "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\MyComputer\NameSpace\{24ad3ad4-a569-4530-98e1-ab02f9417aa8}"
$ThisPCdownloadsRegFolder = "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\MyComputer\NameSpace\{374DE290-123F-4565-9164-39C4925E467B}"
$ThisPCMyPicturesRegFolder = "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\MyComputer\NameSpace\{3ADD1653-EB32-4cb0-BBD7-DFA0ABB5ACCA}"
$ThisPCLocalMusicRegFolder ="HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\MyComputer\NameSpace\{3dfdf296-dbec-4fb4-81d1-6a3438bcf4de}"
$ThisPCMYVideosRegFolder = "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\MyComputer\NameSpace\{A0953C92-50DC-43bf-BE83-3742FED03C9C}"
$ThisPCDocumentsRegFolder = "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\MyComputer\NameSpace\{A8CDFF1C-4878-43be-B5FD-F8091C1C60D0}"
$ThisPCDesktopRegFolder = "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\MyComputer\NameSpace\{B4BFCC3A-DB2C-424C-B029-7FE99A87C641}"
$ThisPCLocalDocumentsRegFolder = "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\MyComputer\NameSpace\{d3162b92-9365-467a-956b-92703aca08af}"
$ThisPCLocalVideosRegFolder = "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\MyComputer\NameSpace\{f86fa3ab-70d2-4fc7-9c99-fcbf05467f3a}"


    New-ItemProperty -Path "$ThisPCLocalDownloadsRegFolder" -Name HideIfEnabled -PropertyType DWORD -Value 36354489 -Force
    New-ItemProperty -Path "$ThisPCMyMusicRegFolder" -Name HideIfEnabled -PropertyType DWORD -Value 36354489 -Force
    New-ItemProperty -Path "$ThisPCLocalPicturesRegFolder" -Name HideIfEnabled -PropertyType DWORD -Value 36354489 -Force
    New-ItemProperty -Path "$ThisPCdownloadsRegFolder" -Name HideIfEnabled -PropertyType DWORD -Value 36354489 -Force
    New-ItemProperty -Path "$ThisPCMyPicturesRegFolder" -Name HideIfEnabled -PropertyType DWORD -Value 36354489 -Force
    New-ItemProperty -Path "$ThisPCLocalMusicRegFolder" -Name HideIfEnabled -PropertyType DWORD -Value 36354489 -Force
    New-ItemProperty -Path "$ThisPCMYVideosRegFolder" -Name HideIfEnabled -PropertyType DWORD -Value 36354489 -Force
    New-ItemProperty -Path "$ThisPCDocumentsRegFolder" -Name HideIfEnabled -PropertyType DWORD -Value 36354489 -Force
    New-ItemProperty -Path "$ThisPCDesktopRegFolder" -Name HideIfEnabled -PropertyType DWORD -Value 36354489 -Force
    New-ItemProperty -Path "$ThisPCLocalDocumentsRegFolder" -Name HideIfEnabled -PropertyType DWORD -Value 36354489 -Force
    New-ItemProperty -Path "$ThisPCLocalVideosRegFolder" -Name HideIfEnabled -PropertyType DWORD -Value 36354489 -Force
