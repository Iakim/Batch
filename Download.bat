@echo off
setlocal enableextensions enabledelayedexpansion
cls
set /a dia=1
set /a qtdDiasMes=31
set /a mes=1
set /a ano=2002
set diaUrl=
set mesUrl=
set secao=DO3
set secaopasta=S03
:ano
if !ano! leq 2017 (
	set /a "mes = 1"
	echo Iniciando ano !ano!. >> log.txt
	echo. >> log.txt
	echo. >> log.txt
	:mes
	if !mes! leq 12 (
		set /a "dia = 1"
		echo ###########  Iniciando mes !mes!. >> log.txt
		echo. >> log.txt
		if !mes! lss 10 (
			set mesUrl=0!mes!
		) else (
			set mesUrl=!mes!
		)	
		:dia
		if !dia! leq !qtdDiasMes! (
		
			if !dia! lss 10 (
				set diaUrl=0!dia!
			) else (
				set diaUrl=!dia!
			)
			echo. >> log.txt
			echo ----------------------------------------------------------------------- >> log.txt 
			"C:\Program Files (x86)\GnuWin32\bin\wget.exe" -q -nv "http://azurewebsites.net/Documents/files/!secao!_!ano!_!mesUrl!_!diaUrl!-art.zip"
			echo. >> log.txt
			set file=C:\Users\isaacbatista\Downloads\DOU\!secao!_!ano!_!mesUrl!_!diaUrl!-art.zip
			if exist !file! (
				echo Arquivo !secao!_!ano!_!mesUrl!_!diaUrl!-art.zip >> log.txt
				md "C:\Users\isaacbatista\Downloads\DOU\!secaopasta!!mesUrl!!ano!"
				move "!file!" "C:\Users\isaacbatista\Downloads\DOU\!secaopasta!!mesUrl!!ano!"
				echo Extraindo arquivo !secao!_!ano!_!mesUrl!_!diaUrl!-art.zip >> log.txt
				"C:\Program Files\7-Zip\7z.exe" e "C:\Users\isaacbatista\Downloads\DOU\!secaopasta!!mesUrl!!ano!\!secao!_!ano!_!mesUrl!_!diaUrl!-art.zip" -oC:\Users\isaacbatista\Downloads\DOU\!secaopasta!!mesUrl!!ano!"
				echo ----------------------------------------------------------------------- >> log.txt
				echo. >> log.txt
			) ELSE (
				echo -----	ERRO	----------------------------------------------------- >> log.txt
				echo Arquivo !secao!_!ano!_!mesUrl!_!diaUrl!-art.zip nao encontrado >> log.txt
				echo -------------------------------------------------------------------- >> log.txt
			)
			set /a "dia = dia + 1"
			goto :dia
		)
		echo ----------------------------------------------------------- >> log.txt
		set /a "mes = mes + 1"
		"C:\Program Files\7-Zip\7z.exe" a "C:\Users\isaacbatista\Downloads\DOU\!secaopasta!!mesUrl!!ano!.zip" "C:\Users\isaacbatista\Downloads\DOU\!secaopasta!!mesUrl!!ano!\*.xml"
		goto :mes
	)
	echo ############################################################### >> log.txt
	echo. >> log.txt
	echo. >> log.txt
	set /a "ano = ano + 1"
	goto :ano
)
endlocal
