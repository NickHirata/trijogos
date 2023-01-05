@echo off
rem placar, mostrar quem esoclheu quem e se deseja jogar novamente
rem pc 1 pedra 2 papel 3 tesoura 4 lagarto 5 spock  pontos2 pc e pontos1 jogador
title JO-KEN-PO 
mode 120,120
color f1
:inicio
set /a pontos1 = 0
set /a pontos2 = 0
echo.
echo =============================================
echo =          Bem-vindo ao JO-KEN-PO           =
echo =============================================
set /p nome=NOME:
goto:tela

:tela
cls
set /a pc = (%random% %%5) + 1
echo.
echo =============================================
echo            Bem-vindo ao JO-KEN-PO          
echo               Jogador: %nome%                          
echo =============================================
echo.
echo -------------------------------------------
echo [1] Pedra                                  
echo [2] Papel                                  
echo [3] Tesoura                                
echo [4] lagarto                                
echo [5] Spock                                  
echo [E] Encerrar jogo                          
echo [R] Regras                                 
echo -------------------------------------------
echo.
set /p op=Digite a opcao desejada: 
if %op% equ 1 (goto:pedra)
if %op% equ 2 (goto:papel)
if %op% equ 3 (goto:tesoura)
if %op% equ 4 (goto:lagarto)
if %op% equ 5 (goto:spock)
if /i %op% equ e (exit) 
if /i %op% equ r (goto:regras) else (
echo.
echo ========================
echo     Opcao Invalida
echo ========================
echo.
pause
goto:tela)

:pedra
cls
if %pc% equ 1 (
echo.
echo ========================
echo 	 Voce empatou!
echo ========================
echo.
	pause
	goto:placar) 

if %pc% equ 2 (
echo.
echo ========================
echo   	 Voce perdeu!
echo ========================
echo.
	set /a pontos2 = %pontos2% + 1
	pause
	goto:placar) 
	
if %pc% equ 3 (
echo.
echo ========================
echo   	 Voce ganhou!
echo ========================
echo.
	set /a pontos1 = %pontos1% + 1
	pause
	goto:placar) 			
if %pc% equ 4 (
echo.
echo ========================
echo   	 Voce ganhou!
echo ========================
echo.
	set /a pontos1 = %pontos1% + 1
	pause
	goto:placar) 
	
if %pc% equ 5 (
echo.
echo ========================
echo   	 Voce perdeu!
echo ========================
echo.
	set /a pontos2 = %pontos2% + 1
	pause
	goto:placar)

:papel
cls
if %pc% equ 1 (
echo.
echo ========================
echo   	 Voce ganhou!
echo ========================
echo.
	set /a pontos1 = %pontos1% + 1
	echo Voce empatou!
	pause
	goto:placar) 
	
if %pc% equ 2 (
echo.
echo ========================
echo 	 Voce empatou!
echo ========================
echo.
	pause
	goto:placar)
	
if %pc% equ 3 (
echo.
echo ========================
echo   	 Voce perdeu!
echo ========================
echo.
	set /a pontos2 = %pontos2% + 1
	goto:placar)
	
if %pc% equ 4 (
echo.
echo ========================
echo   	 Voce perdeu!
echo ========================
echo.
	set /a pontos2 = %pontos2% + 1
	pause
	goto:placar)
	
if %pc% equ 5 (
echo.
echo ========================
echo   	 Voce ganhou!
echo ========================
echo.
	set /a pontos1 = %pontos1% + 1
	pause
	goto:placar)

:tesoura
cls
if %pc% equ 1 (
echo.
echo ========================
echo   	 Voce perdeu!
echo ========================
echo.
	set /a pontos2 = %pontos2% + 1
	pause
	goto:placar) 

if %pc% equ 2 (
echo.
echo ========================
echo   	 Voce ganhou!
echo ========================
echo.
	set /a pontos1 = %pontos1% + 1
	pause
	goto:placar) 
	
if %pc% equ 3 (
echo.
echo ========================
echo 	 Voce empatou!
echo ========================
echo.
	goto:placar)
	
if %pc% equ 4 (
echo.
echo ========================
echo   	 Voce ganhou!
echo ========================
echo.

	set /a pontos1 = %pontos1% + 1
	pause
	goto:placar) 
	
if %pc% equ 5 (
echo.
echo ========================
echo   	 Voce perdeu!
echo ========================
echo.
	set /a pontos2 = %pontos2% + 1
	pause
	goto:placar)
	
pause
:lagarto
cls
if %pc% equ 1 (
echo.
echo ========================
echo   	 Voce perdeu!
echo ========================
echo.
	set /a pontos2 = %pontos2% + 1
	pause
	goto:placar) 

if %pc% equ 2 (
echo.
echo ========================
echo   	 Voce ganhou!
echo ========================
echo.
	set /a pontos1 = %pontos1% + 1
	pause
	goto:placar)
	
if %pc% equ 3 (
echo.
echo ========================
echo   	 Voce perdeu!
echo ========================
echo.
	set /a pontos2 = %pontos2% + 1
	pause
	goto:placar)
	
if %pc% equ 4 (
echo.
echo ========================
echo 	 Voce empatou!
echo ========================
echo.

	pause
	goto:placar)
	
if %pc% equ 5 (
echo.
echo ========================
echo   	 Voce ganhou!
echo ========================
echo.
	set /a pontos1 = %pontos1% + 1
	pause
	goto:placar)
	

:spock
cls
if %pc% equ 1 (
if %pc% equ 1 (
echo.
echo ========================
echo   	 Voce ganhou!
echo ========================
echo.
	set /a pontos1 = %pontos1% + 1
	pause
	goto:placar) 

if %pc% equ 2 (
echo.
echo ========================
echo   	 Voce perdeu!
echo ========================
echo.
	set /a pontos2 = %pontos2% + 1
	pause
	goto:placar)
	
if %pc% equ 3 (
echo.
echo ========================
echo   	 Voce ganhou!
echo ========================
echo.
	set /a pontos1 = %pontos1% + 1
	pause
	goto:placar)

echo.
echo ========================
echo   	 Voce perdeu!
echo ========================
echo.
	set /a pontos2 = %pontos2% + 1
	pause
	goto:placar)
			
if %pc% equ 5 (
echo.
echo ========================
echo 	 Voce empatou!
echo ========================
echo.
	pause
	goto:placar)
		


:regras
cls
echo.
echo --------------------------REGRAS----------------------------------------------
echo PEDRA:empata com pedra; ganha de tesoura e lagarto; perde de papel e spock    
echo PAPEL: empata c/ papel; ganha de pedra e spock; perde de tesoura e lagarto    
echo TESOURA: empata c/ tesoura; ganha de lagarto e papel; perde de pedra e spock  
echo lagarto: empata c/ lagarto; ganha de papel e spock; perde de pedra e tesoura  
echo SPOCK:empata c/ spock; ganha de pedra e tesoura; perde de lagarto e papel     
echo ------------------------------------------------------------------------------
echo.
pause
goto:tela

:placar 
cls
echo.
echo  -----------------PLACAR--------------------
if %op% == 1 (
echo  %nome% : pedra --- %pontos1%  
)
if %op% == 2 (
echo  %nome% : papel --- %pontos1%    
)
if %op% == 3 (
echo  %nome% : tesoura --- %pontos1%    
)
if %op% == 4 (
echo  %nome% : lagarto --- %pontos1%    
)
if %op% == 5 (
echo  %nome% : spock --- %pontos1%    
)

if %pc% == 1 (
echo  Computador: pedra --- %pontos2%   
)               
if %pc% == 2 (
echo  Computador: papel --- %pontos2% 
)  
if %pc% == 3 (
echo  Computador: tesoura --- %pontos2% 
)  
if %pc% == 4 (
echo  Computador: lagarto --- %pontos2% 
)  
if %pc% == 5 (
echo  Computador: spock --- %pontos2% 
)               
echo  -------------------------------------------
echo.
set /p resp=Deseja continuar o jogo?[S/N] 
if /i %resp% == s (goto:tela) else (goto:inicio)
pause