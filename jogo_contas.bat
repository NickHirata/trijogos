@echo off
title aula 03 - leitura e escrita em uma lista
mode 40,20

color f1
:inicio
cls
echo.
echo -=-=-=-==-=-=-=-=-=-=-=-=-=-
echo       MENU PRINCIPAL
echo -=-=-=-==-=-=-=-=-=-=-=-=-=-
echo [J] Jogar
echo [L] Listar Pontuacao
echo [E] Encerrar Programa
echo -=-=-=-==-=-=-=-=-=-=-=-=-=-
echo.
set /p op=Digite a opcao desejada:
if /i %op% equ J (goto:jogador)
if /i %op% equ L (goto:listar)
if /i %op% equ E (goto:sair) else (
	echo.
	echo -=-=-=-==-=-=-=-=-=-=-=-=-=-
	echo       Opcao Invalida !
	echo -=-=-=-==-=-=-=-=-=-=-=-=-=-
	echo.
	pause > nul
	goto:inicio)

:jogador
cls
set /a acertos = 0
set /p nome=Digite o nome do jogador: 
goto:jogar
	
:jogar
cls
echo acertos: %acertos%
set /a num = (%random% %%10) + 1
set /a numm = (%random% %%10) + 1
set /a p = (%random% %%3) + 1

if %p% equ 1 (
set /a resul = num + numm
echo %num% + %numm% = ??? )

if %p% equ 2 (
set /a resul = num - numm
echo %num% - %numm% = ??? ) 

if %p% equ 3 (	
set /a resul = num * numm
echo %num% * %numm% = ??? )
	
set /p result=Qual o resultado?: 
if %result% equ %resul% (goto:acerto) else (goto:jogardnv)
pause 

:acerto 

set /a acertos = %acertos% + 1
goto:jogar

:jogardnv
cls
echo.
echo -=-=-=-==-=-=-=-=-=-=-=-=-=-
echo  	Voce errou!!
echo  resposta:%resul%
echo  voce digitou:%result%
echo -=-=-=-==-=-=-=-=-=-=-=-=-=-
echo.
set /p resp=Deseja jogar novamente? [S/N]
if /i %resp% equ s (goto:gravar) else (goto:gravar)

:gravar
echo Jogador: %nome%; Acertos: %acertos%; Data: %date% - Hora: %time% >> listacontas.txt
if /i %resp% equ s (goto:jogador) else (goto:inicio)


:listar
cls
mode 120,40
echo.
echo -=-=-=-==-=-=-=-=-=-=-=-=-=-
echo  Listagem geral de clientes
echo -=-=-=-==-=-=-=-=-=-=-=-=-=-
echo.

for /F "delims=" %%n in (listacontas.txt) do (
	echo Registro: %%n )
	echo.
	pause > nul
	goto:inicio
pause

:sair
if /i %resp% equ s (goto:inicio) else (exit)