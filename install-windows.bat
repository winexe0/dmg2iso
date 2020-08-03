echo off
powershell -Command "(New-Object Net.WebClient).DownloadFile('https://osdn.mirror.constant.com//mingw/68260/mingw-get-setup.exe', 'mingw-get-setup.exe')" 
cd C:\MinGW\bin
powershell -Command "(New-Object Net.WebClient).DownloadFile('https://raw.githubusercontent.com/winexe0/dmg2iso/master/dmg2iso.cc', 'dmg2iso.cc')"
powershell -Command "(New-Object Net.WebClient).DownloadFile('https://raw.githubusercontent.com/winexe0/dmg2iso/master/dmg2iso.h', 'dmg2iso.h')"
powershell -Command "(New-Object Net.WebClient).DownloadFile('https://raw.githubusercontent.com/winexe0/dmg2iso/master/base64.h', 'base64.h')"
powershell -Command "(New-Object Net.WebClient).DownloadFile('https://raw.githubusercontent.com/winexe0/dmg2iso/master/base64.cc', 'base64.cc')"
gcc -o dmg2iso.exe dmg2iso.o base64.o -L. -lz -s
gcc -03 -c dmg2iso.cc
gcc -03 -c base64.cc
move dmg2iso.exe C:\Windows\System32
echo You can close this window now
pause