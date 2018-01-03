@echo off
title PRN Printer - v0.3
REM Ferramenta para impressão de arquivos PRN. Para atualizações, acesse o repositório no GitHub.
REM Repositório: https://github.com/emiliodeoliveira/PRN-Printer
REM E-mail: emilio.oliveira@safelight.info
REM Em caso de erros, favor contatar no e-mail acima.
cd database
color 0a
mode 57,35
:MENU
echo.
echo ===================================================
echo PRN Printer - v0.2
echo ===================================================
echo 1. Imprimir do diretorio TEMP
echo 2. Imprimir de outro diretorio
echo 3. Sair
echo.

set esc=0
set /p esc=Escolher:
echo.
 if %esc% equ 0 goto MENU
 if %esc% equ 1 goto TEMP
 if %esc% equ 2 goto OUTRO
 if %esc% equ 3 goto SAIR
goto MENU

:TEMP
title PRN Printer\Menu\TEMP
set /p arquivo=Digite o nome do arquivo:
echo Escolha a porta para impressao:
echo 1 - LPT1
echo 2 - LPT2
echo 3 - LPT3
set /p escolheporta=Digite a opcao:
 if %escolheporta% EQU 1 set lpt=lpt1
 if %escolheporta% EQU 2 set lpt=lpt2
 if %escolheporta% EQU 3 set lpt=lpt3
type c:\temp\%arquivo%.prn > %lpt%
echo c:\temp\%arquivo%.prn enviado para a impressora %lpt%
pause
goto SAIR

:OUTRO
title PRN Printer\Menu\OUTRO
set /p arquivo=Digite o caminho do arquivo:
echo Escolha a porta para impressao:
echo 1 - LPT1
echo 2 - LPT2
echo 3 - LPT3
set /p escolheporta=Digite a opcao:
 if %escolheporta% EQU 1 set lpt=lpt1
 if %escolheporta% EQU 2 set lpt=lpt2
 if %escolheporta% EQU 3 set lpt=lpt3
type %arquivo% > %lpt%
echo c:\temp\%arquivo% enviado para a impressora %lpt%
pause
goto SAIR

:SAIR
title PRN Printer\Menu\Sair
cls
echo.
set sair=0
set /p sair=Vocˆ tem certeza que deseja sair?(s/n):
if %sair% equ 0 goto SAIR
if %sair% equ S exit -s
if %sair% equ s exit -s
if %sair% equ N goto MENU
if %sair% equ n goto MENU
echo.
echo Comando inv lido! Digite a tecla "S" ou a tecla "s" para "Sim" e a tecla "N" ou a tecla "n" para "NÆo".
pause>nul
goto SAIR

