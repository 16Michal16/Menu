@echo off
title Menu
color 9
:start
start startup.vbs
goto menu
:menu
cls
echo  +============+
echo   Witaj w menu
echo  +============+
echo.
echo [0] Wyjd«
echo [1] Menu Stron
echo [2] Zegar
echo [3] Serwer Minecraft (LocalHost)
echo [4] Kalkulator
echo.
set /p "menu=>"
if %menu%== 0 goto exit
if %menu%== 1 goto websites
if %menu%== 2 goto clock
if %menu%== 3 goto ram
if %menu%== 4 goto calculator
if not %menu%== 0 goto menu
if not %menu%== 1 goto menu
if not %menu%== 2 goto menu
if not %menu%== 3 goto menu
if not %menu%== 4 goto menu
:websites
cls
echo [0] Wyjd« do menu
echo [1] YouTube
echo [2] Allegro
echo [3] Media Expert
echo [4] Olx
echo [5] Apple (Polska)
echo [6] Biedronka
echo.
set /p "website=>"
if %website%== 0 goto menu
if %website%== 1 start https://www.youtube.com
if %website%== 2 start https://allegro.pl
if %website%== 3 start https://www.mediaexpert.pl/
if %website%== 4 start https://www.olx.pl
if %website%== 5 start https://www.apple.com/pl/
if %website%== 6 start https://www.biedronka.pl/pl
if not %website%== 0 goto websites
if not %website%== 1 goto websites
if not %website%== 2 goto websites
if not %website%== 3 goto websites
if not %website%== 4 goto websites
if not %website%== 5 goto websites
if not %website%== 6 goto websites
goto menu
:clock
cls
echo %time%
echo  %date%
echo.
echo [0] Wyjd« do menu
set /p "clock=>"
if %clock%== 0 goto menu
if not %clock%== 0 goto zegar
:ram
cls
echo RAM (GB)
set /p "ram=>"
goto localhost
:localhost
cls
echo eula=true>eula.txt
java -Xmx%ram%G -jar server.jar nogui
pause
goto menu
:calculator
cls
set /p "x=>"
set /a "result=%x%"
cls
echo Wynik to %result%
pause
goto menu
:exit
cls
echo Czy napewno chcesz wyj˜† z menu? (Tak/Nie)
set /p "exit=>"
if %exit%== Tak exit
if %exit%== tak exit
if not %exit%== Tak goto exit
if not %exit%== tak goto exit