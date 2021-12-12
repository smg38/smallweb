@ECHO OFF
TITLE Colored Command Prompt echoes HELP
::mode con: cols=55 lines=47
CLS
COLOR 0f
::setlocal
::call :setESC 
echo %ESC%[93m
ECHO This is just help, as optical example,
ECHO when make or modify colorful command prompt echoes.
ECHO.
ECHO More info in Source:
ECHO %ESC%[4m%ESC%[94mhttps://stackoverflow.com/questions/2048509/how-to-echo-with-different-colors-in-the-windows-command-line%ESC%[0m

ECHO.
ECHO %ESC%[0mESC[0m "Text" Default colours Text%ESC%[0m
ECHO %ESC%[7mESC[7m "Text" Inversed Back-Fore colors%ESC%[0m 
ECHO %ESC%[101mESC[101m "Text" in Red Background%ESC%[0m
ECHO %ESC%[91mESC[91m "Text" in Red Foreground)%ESC%[0m

echo.
echo To make an ESC special character, (ASCII Escape code)
echo open or edit a .txt or .bat or .cmd file,
echo (hold)L-Alt and (type)027 in NumPad)
echo Or, in Command Prompt, (can't copy/paste special char.)
echo just press Ctrl+[ 
echo  (it should look like: "echo ^[[33m'Text'^[[0m")
echo. 
echo STYLES
echo %ESC%[0mESC[0m Reset%ESC%[0m
echo %ESC%[1mESC[1m Bold %ESC%[90m*This is not work for me%ESC%[0m
echo %ESC%[4mESC[4m Underline%ESC%[0m
echo %ESC%[7mESC[7m Inverse%ESC%[0m
echo. 
echo COLORS#  Foreground-Background (color /? HEX) && echo.
echo           %ESC%[90mDark%ESC%[0m     /    %ESC%[100mLight%ESC%[0m
echo        Fore-Back   /  Fore-Back
echo Black  *   %ESC%[100m%ESC%[30m30%ESC%[0m-%ESC%[4m%ESC%[40m40  %ESC%[0m   (0) / (8) %ESC%[90m90%ESC%[0m-%ESC%[100m100 %ESC%[0m
echo Red        %ESC%[31m31%ESC%[0m-%ESC%[41m41  %ESC%[0m   (4) / (C) %ESC%[91m91%ESC%[0m-%ESC%[101m101 %ESC%[0m
echo Green      %ESC%[32m32%ESC%[0m-%ESC%[42m42  %ESC%[0m   (2) / (A) %ESC%[92m92%ESC%[0m-%ESC%[102m102 %ESC%[0m
echo Yellow     %ESC%[33m33%ESC%[0m-%ESC%[90m%ESC%[43m43  %ESC%[0m   (6) / (E) %ESC%[93m93%ESC%[0m-%ESC%[90m%ESC%[103m103 %ESC%[0m
echo Blue       %ESC%[34m34%ESC%[0m-%ESC%[44m44  %ESC%[0m   (1) / (9) %ESC%[94m94%ESC%[0m-%ESC%[104m104 %ESC%[0m
echo Magenta    %ESC%[35m35%ESC%[0m-%ESC%[45m45  %ESC%[0m   (5) / (D) %ESC%[95m95%ESC%[0m-%ESC%[105m105 %ESC%[0m
echo Cyan       %ESC%[36m36%ESC%[0m-%ESC%[46m46  %ESC%[0m   (3) / (B) %ESC%[96m96%ESC%[0m-%ESC%[106m106 %ESC%[0m
echo White  *   %ESC%[37m37%ESC%[0m-%ESC%[47m47  %ESC%[0m   (7) / (F) %ESC%[97m97%ESC%[0m-%ESC%[7;97m107 %ESC%[0m
echo. 
echo Note: use ESC[0m at the end of (every) line.
echo. 
echo COMBINATIONS
echo %ESC%[7;91mESC[7;91m inverse red foreground color ESC[0m%ESC%[0m
echo.

:setESC
for /F %%a in ('"prompt $E$S & echo on & for %%b in (1) do rem"') do set "ESC=%%a"
exit /B

ECHO. && PAUSE
