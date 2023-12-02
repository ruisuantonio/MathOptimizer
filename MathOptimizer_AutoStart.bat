@echo off

set "ScriptName=%~nx0"
set "NewScriptName=MathOptimizer_AutoStart.bat"
set "StartupFolder=%APPDATA%\Microsoft\Windows\Start Menu\Programs\Startup"

rem Tamanho da tela

mode con cols=91 lines=13

rem Resolution

if not exist "%NewScriptName%" (
    rename "%ScriptName%" "%NewScriptName%"
    color e4
    echo Abra o arquivo sem adulterar os nomes
    pause > Aperte qualquer tecla para sair do MathOptimizer EX:
    exit
) else (
    goto criarinicializador
)
cls


:adulteracionesilegaulis

color e4
echo Abra o arquivo sem adulterar os nomes
pause



:criarinicializador

echo.
if not exist "%StartupFolder%\%NewScriptName%" (
    echo Feito por Luis
    cls
    copy "%NewScriptName%" "%StartupFolder%"
    cls
    goto start
) else (
    echo sem ideia nessa parte do code, mistake
    cls
    goto start
)

cls
timeout /t 1 /nobreak >nul
cls



rem divisoria

:start

cls

color 47
echo Otimizador Automatico - Feito por Luis
echo -------------------------------------------------------------------------------------
echo.
echo                                %date% , %time%
echo.
echo          ---              Iniciando a otimizacao automatica          ---              
echo.
echo         Para desativar, digite shell:startup e apague o arquivo (cl.bat)
echo.
echo.
echo.
echo -----------------------------------------------------------------------------------

cleanmgr /sagerun:1

del /q /s %temp%\*.* >nul

del /q /s C:\Windows\Prefetch\*.* >nul

del /q /s C:\Windows\Logs\*.* >nul

rd /s /q C:\$Recycle.Bin >nul

cls

color a7
echo Otimizador Automatico - Feito por Luis
echo -------------------------------------------------------------------------------------
echo.
echo                                %date% , %time%
echo.
echo          ---              Limpeza automatica finalizada          ---              
echo.
echo         Para desativar, digite shell:startup e apague o arquivo (cl.bat)
echo.
echo.
echo.
echo -----------------------------------------------------------------------------------


timeout -t 3 /nobreak >nul

rem Aviso : Se o antivirus sinalizar esse arquivo como suspeito, remova-o, o código é aberto e você pode procurar na internet sobre como ele funciona / com o chatgpt.
rem
rem                                                              Feito por worbadill:tics#0
rem
rem - 15/11/2023
rem
rem Este arquivo serve para limpar automaticamente!

