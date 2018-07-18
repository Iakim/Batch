@echo off
setlocal enableextensions enabledelayedexpansion
cls
set /a mes=1
set /a ano=2002
set diaUrl=
set mesUrl=
:ano
if !ano! leq 2017 (
	set /a "mes = 1"
	:mes
	if !mes! leq 12 (
		set /a "dia = 1"
		if !mes! lss 10 (
			set mesUrl=0!mes!
		) else (
			set mesUrl=!mes!
		)
		set file=C:\Users\isaac\Downloads\DOU\Legado_Catae_Portal\!ano!\S01!mesUrl!!ano!-filtro\*.zip
		del "!file!"
		echo echo !file!
		set /a "mes = mes + 1"
		goto :mes
	)
	set /a "ano = ano + 1"
	goto :ano
)
endlocal
