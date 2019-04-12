echo Installing
copy unzip32.exe C:\DOS /Y
echo Base Enviroment
mkdir C:\djgpp
cd C:\djgpp
unzip32 C:\DJGPPINS\tmp\*.zip
CLS
echo Unzipping Extra Compilers 
unzip32 C:\DJGPPINS\tmp\tv\tools\compiler\*.zip
CLS
echo Unzipping Extra Tools 
unzip32 C:\DJGPPINS\tmp\tv\tools\*.zip
CLS
echo Unzipping Turbo Vision
unzip32 C:\DJGPPINS\tmp\tv\*.zip
CLS
echo Finnishing up
COPY C:\DJGPPINS\DJGPP.ENV . /Y
TYPE C:\DJGPPINS\CONFIG.txt >> C:\CONFIG.sys
TYPE C:\DJGPPINS\AUTOEXEC.txt >> C:\AUTOEXEC.BAT
CLS
@echo off
echo NOW ITS YOUR PART SO REBOOT AND TYPE THAT IN
echo *********************************************
echo CD C:\DJGPP\CONTRIB\TVISION
echo CONFIGUR.BAT
echo make
echo make install
echo *********************************************