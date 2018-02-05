@echo off
echo Atualizando pastas do ***, aguarde...

IF EXIST c:\pasta-bkp\ (GOTO :RMBKP) ELSE (GOTO :PASSO0)

	:RMBKP
	rmdir /Q /S c:\pasta-bkp\

:PASSO0

IF EXIST c:\pasta\ (GOTO :PASSO1)

	:PASSO1
	cd c:\
	ren pasta pasta-bkp
	mkdir c:\pasta\***\bin

IF EXIST c:\pasta\***\bin (GOTO :PASSO2) ELSE (GOTO :PASSO1)

	:PASSO2
	xcopy /Q /E /Y "\\server\Support\bin\*.*" c:\pasta\***\bin\


IF EXIST C:\Users\%username%\AppData\Roaming\pastaDP\*** (GOTO :PASSO4) ELSE (GOTO PASSO3)

	:PASSO3
	xcopy /Q /E /Y "\\server\Support\pastaDP\*.*" C:\Users\%username%\AppData\Roaming\pastaDP

	:PASSO4
	echo Pastas do *** atualizadas com sucesso!
	timeout 5
