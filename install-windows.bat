curl https://osdn.net/frs/redir.php?m=xtom_us&f=mingw%2F68260%2Fmingw-get-setup.exe
mingw-get-setup
echo Follow the MinGW Installation to compile dmg2iso.
echo Don't change the Installation directory. It will cause problems. When It's done click on continue.
echo Check the box on "mingw32-gcc-g++" and click on installation on the upper left corner.
echo Click on apply changes and click on apply. When it is done, click on close.
cd C:\MinGW\bin
curl https://raw.githubusercontent.com/winexe0/dmg2iso/master/dmg2iso.cc
curl https://raw.githubusercontent.com/winexe0/dmg2iso/master/dmg2iso.h
curl https://raw.githubusercontent.com/winexe0/dmg2iso/master/base64.h
curl https://raw.githubusercontent.com/winexe0/dmg2iso/master/base64.cc
gcc -o dmg2iso.exe dmg2iso.o base64.o -L. -lz -s
gcc -03 -c dmg2iso.cc
gcc -03 -c base64.cc
move dmg2iso.exe C:\Windows\System32
echo You can close this window now
