@echo off
title Jogo da adivinhacao
mode 60,50
color f1


:k
set /a num = (%random% %%50) + 1
set /a t = 6
:inicio 
set /a t = %t% -1
if %t% equ 0 (goto:perdeu) 
cls
echo. 
echo ===============================================
echo  Adivinhe um numero sorteado entre 1 e 50   
echo ===============================================
echo  Quantidade de tentativas: %t%              
echo ===============================================
echo. 
echo ------------------------------
set /p pal=Digite o seu palpite: 
echo ------------------------------
if %pal% equ %num% (goto:ganhou) else (goto:errou)
echo. 

:errou
if %pal% GTR %num% (
cls
echo.
echo =================================
echo     Digite um numero menor!
echo =================================
pause
goto:inicio

 ) else (
 cls
echo.
echo =================================
echo     Digite um numero maior!
echo =================================
pause
goto:inicio
 )

:ganhou
cls
echo.
echo =================================
echo       Voce ganhou! :)
echo  O numero foi: %num%
echo =================================
set /p resp=Deseja jogar novamente? [S/N]:
if /i %resp% == s (goto:k) else (exit)


:perdeu
cls
echo.
echo =================================
echo        Voce perdeu! :(
echo O numero era: %num%
echo     Usou todas suas chances!
echo =================================
set /p resp=Deseja jogar novamente? [S/N]:
if /i %resp% == s (goto:k) else (exit)




