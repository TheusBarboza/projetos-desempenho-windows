@echo off

chcp 65001

fsutil dirty query %systemdrive%  >nul 2>&1 || (
echo ================= ERRO =================
echo Este script requer privilégios de Administrador.
echo Clique com o botão direto no script e selecione 'Executar como Administrador'
echo .
echo Pressiona qualquer tecla para sair...
pause >nul
exit
)

:==========================================================================================

color 3F
mode con cols=98
lines=30
title Limpeza de arquivos temporários do Windows

:==========================================================================================
 
:MAINMENU
cls
mode con cols=98 lines=30
Echo.              
Echo.                  
Echo.                     _________________________________________________________
Echo.                    ^|                                                         ^|
Echo.                    ^|          -------------- ATENÇÃO --------------          ^|
Echo.                    ^|                                                         ^|
Echo.                    ^|                Para uma limpeza completa,               ^| 
Echo.                    ^|      é necessário fechar todos os programas abertos.    ^| 
Echo.                    ^|                                                         ^|
Echo.                    ^|            Digite [1] para iniciar a limpeza            ^| 
Echo.                    ^|                 de arquivos temporários.                ^|  
Echo.                    ^|                                                         ^|       
Echo.                    ^|                                                         ^| 
Echo.                    ^|              Developed by Matheus Barbosa               ^| 
Echo.                    ^|                 github.com/TheusBarboza                 ^| 
Echo.                    ^|                                                         ^|
Echo.                    ^|_________________________________________________________^|
ECHO.            
choice /C:1 /N /M ".                   Digite a opção informada: "
if errorlevel 1 goto:Limpeza

:==========================================================================================

:Limpeza

:==========================================================================================

cd C:\Users\%username%\Appdata\Local\Temp
del /f /q .

Echo.
Echo.
Echo.
Echo ==================== Primeira limpeza concluída ====================
Echo ==================== Vamos para o próximo passo ====================
Echo.

pause

:===========================================================================================

cd C:\Windows\Temp
del /f /q .

Echo.
Echo.
Echo.
Echo ==================== Segunda limpeza concluída ====================
Echo ==================== Vamos para o último passo ====================

pause

:============================================================================================
cd C:\Windows\Prefetch
del /f /q .

Echo.
Echo.
Echo.
Echo ======================= Terceira limpeza concluída =========================
Echo ==================== Pressione qualquer tecla para sair ====================

pause >nul

exit