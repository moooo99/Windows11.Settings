
<# Set variables to indicate value and key to set
$RegistryPath = 'HKCU:\Software\Microsoft\Windows\CurrentVersion\Search'
$Name         = 'SearchboxTaskbarMode'
$Value        = '1'
 Create the key if it does not exist
#>

<#Registry Locations#>
$HKCUExplorerAdvanced = "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced"
$HKLMPowerOptions = "HKLM:\SYSTEM\CurrentControlSet\Control\Session Manager\Power"
$HKCUPersonalize = "HKCU:\Software\Microsoft\Windows\CurrentVersion\Themes\Personalize"
$HKCUSearch = "HKCU:\Software\Microsoft\Windows\CurrentVersion\Search"

<#Keys#>
$RemoveWidgets = "TaskbarDa" 			#Removes Widgets
$RemoveChat = "TaskbarMn"                 #Removes Chat
$RemoveSearch = "SearchboxTaskbarMode"    #Removes Search
$NoQuickAcess = "LaunchTo"                #Opens Explorer to This PC
$FileExtension = "HideFileExt"            #Enables File Extensions
$ShowFiles = "Hidden"                     #Show Hidden Files
$AppDarkMode = "AppsUseLightTheme"        #Apps use Dark Mode
$SysDarkMode = "SystemUsesLightTheme"     #System uses Dark Mode
$HybridBoot = "HiberbootEnabled"          #Disables Fast Boot


    New-ItemProperty -Path "$HKCUExplorerAdvanced" -Name $RemoveWidgets -PropertyType DWORD -Value 0 -Force
    New-ItemProperty -Path "$HKCUExplorerAdvanced" -Name $RemoveChat -PropertyType DWORD -Value 0 -Force
    New-ItemProperty -Path "$HKCUExplorerAdvanced" -Name $NoQuickAcess -PropertyType DWORD -Value 1 -Force
    New-ItemProperty -Path "$HKCUExplorerAdvanced" -Name $FileExtension -PropertyType DWORD -Value 0 -Force
    New-ItemProperty -Path "$HKCUExplorerAdvanced" -Name $ShowFiles -PropertyType DWORD -Value 1 -Force
    New-ItemProperty -Path "$HKCUSearch" -Name $RemoveSearch -PropertyType DWORD -Value 0 -Force
    New-ItemProperty -Path "$HKCUPersonalize" -Name $AppDarkMode -PropertyType DWORD -Value 0 -Force
    New-ItemProperty -Path "$HKCUPersonalize" -Name $SysDarkMode -PropertyType DWORD -Value 0 -Force
    New-ItemProperty -Path "$HKLMPowerOptions" -Name $HybridBoot -PropertyType DWORD -Value 0 -Force
