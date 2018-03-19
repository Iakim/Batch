@echo off
color 0c
title Modo Batch - The Game Of Memes.
:jogadores
cls
set jogador=
set replay=
echo.
echo Bem vindo ao Modo Batch - The Game Of Memes.
echo.
set /p jogador=Selecione 1 ou 2 jogadores:
if '%jogador%'=='1' goto name
if '%jogador%'=='2' goto p1name
goto jogadores
:name
cls
set name=
echo.
set /p name=Qual o seu primeiro nome?
if '%name%'=='' goto name
rem Codigo:
if '%name%'=='Iakim' goto win
:meme
cls
set meme=
set enemy=
echo.
echo Eae %name%!
echo.
echo Escolha seu meme:
echo.
echo 1 - Vin Diesel
echo.
echo 2 - Cepo de Madeira
echo.
echo 3 - Jailson Mendes
echo.
set /p meme=1, 2 ou 3?
if '%meme%'=='1' goto enemy1
if '%meme%'=='2' goto enemy2
if '%meme%'=='3' goto enemy3
goto meme
:enemy1
set meme="Vin Diesel"
goto enemy
:enemy2
set meme="Cepo de Madeira"
goto enemy
:enemy3
set meme="Jailson Mendes"
:enemy
set /a cpumemerand=%random% %%5 +1
if '%cpumemerand%'=='0' goto enemy
if '%cpumemerand%'=='1' set enemy="Jojo Todinho"
if '%cpumemerand%'=='2' set enemy="Pablo Vittar"
if '%cpumemerand%'=='3' set enemy="Ines Brasil"
if '%cpumemerand%'=='4' goto enemy
if '%cpumemerand%'=='5' goto enemy
if '%enemy%'=='%meme%' goto enemy
:begin
set user=1000
set cpu=1000
set atk1=1
set atk2=2
set atk3=3
set cpuatk1=1
set cpuatk2=2
set cpuatk3=3
:gameplay
cls
set move=
set choice=
set cpucount=0
echo.
echo %name%, sua vez seu vagabundinho.
echo                                                     %meme%: %user% DEF
echo Tipos de ataques:
echo                                                     %enemy%: %cpu% DEF
echo 1. Abre essa merda sua vagabunda x %atk1%
echo.
echo 2. Esse programa aqui ta uma porra x %atk2%
echo.
echo 3. Cabeca de gelo x %atk3%
echo.
echo 4. Ai pae para
echo.
echo 5. Nao vai subir ninguem
echo.
set /p move=O que vai fazer?
if '%move%'=='1' goto atk1
if '%move%'=='2' goto atk2
if '%move%'=='3' goto atk3
if '%move%'=='4' goto surrender
if '%move%'=='5' goto cpu1
goto gameplay
:atk1
cls
if '%atk1%'=='0' goto noatk1
echo.
echo %name% mandou %enemy% abrir essa merda! 
echo.
ping localhost -n 4 >nul
echo Se fodeo!
echo.
echo %enemy% abriu essa merda e perdeu 400 real!
echo.
pause
set /a cpu=%cpu% - 400
set atk1=0
if '%cpu%'=='0' goto win
if '%cpu%'=='-100' goto win
if '%cpu%'=='-200' goto win
if '%cpu%'=='-300' goto win
goto cpu1
:noatk1
echo.
echo %name%, voce nao pode mais mandar essa vagabunda abrir essa merda!
echo.
pause
goto gameplay
:atk2
cls
if '%atk2%'=='0' goto noatk2
echo.
echo %name% voce disse para %enemy% ao vivo que esse programa esta uma porra!
echo.
ping localhost -n 4 >nul
echo Se fodeo!
echo.
echo %enemy% ficou pianinho em rede nacional e pagou 300 real de multa!
echo.
pause
set /a cpu=%cpu% - 300
set /a atk2=%atk2% - 1
if '%cpu%'=='0' goto win
if '%cpu%'=='-100' goto win
if '%cpu%'=='-200' goto win
if '%cpu%'=='-300' goto win
goto cpu1
:noatk2
echo.
echo %name%, voce nao pode dizer que esse programa esta uma porra ao vivo!
echo.
pause
goto gameplay
:atk3
cls
if '%atk3%'=='0' goto noatk3
echo.
echo %name%, com a ajuda de  DJ Cleiton Rasta jogou uma cabeça de gelo em %enemy%!
echo.
ping localhost -n 4 >nul
echo Se fodeo!
echo.
echo %enemy% desmaiou e roubaram 200 pilas!
echo.
pause
set /a cpu=%cpu% - 200
set /a atk3=%atk3% - 1
if '%cpu%'=='0' goto win
if '%cpu%'=='-100' goto win
if '%cpu%'=='-200' goto win
if '%cpu%'=='-300' goto win
goto cpu1
:noatk3
echo.
echo DJ cleiton Rasta esta fazendo a galera debochar agora!
echo.
pause
goto gameplay
:surrender
cls
echo.
echo Voce virou fiatinho e mandou o papai parar...
echo.
pause
:end
cls
echo.
echo %name% voce eh um merda mermao...
echo.
set /p replay=Digite qualquer tecla para continuar. Digite 'x' para sair:
if '%replay%'=='x' goto suggest
if '%replay%'=='' goto end
goto jogadores
:win
cls
echo.
echo Parabains, voce ganhou essa disgracaaa seu tijolinho de merda!!!
echo.
pause
:win2
cls
echo.
echo Parabains, voce ganhou essa disgracaaa seu tijolinho de merda!!!
echo.
set /p replay=Digite qualquer tecla para continuar. Digite 'x' para sair:
if '%replay%'=='x' goto suggest
if '%replay%'=='' goto win2
goto jogadores
:cpu1
cls
set /a cpucount=%cpucount% + 1
if '%cpucount%'=='10' goto cpu2
echo.
echo Minha vez.
echo                                                   %meme%: %user% DEF
echo Tipos de ataques:
echo                                                   %enemy%: %cpu% DEF
echo 1. E o que? - by Pablo V. x %cpuatk1%
echo.
echo 2. Que tiro foi esse? x %cpuatk2%
echo.
echo 3. Segura a Marimba Ai Monamour x %cpuatk3%
echo.
echo 4. Ai pae para
echo.
echo 5. Eu nao vou fazer nada pq eu nao sou obrigada
echo.
echo O que vai fazer?/
ping localhost -n 1 >nul
ping localhost -n 1 >nul
ping localhost -n 1 >nul
ping localhost -n 1 >nul
cls
echo.
echo Minha vez.
echo                                                   %meme%: %user% DEF
echo Tipos de ataques:
echo                                                   %enemy%: %cpu% DEF
echo 1. E o que? - by Pablo V. x %cpuatk1%
echo.
echo 2. Que tiro foi esse? x %cpuatk2%
echo.
echo 3. Segura a Marimba Ai Monamour x %cpuatk3%
echo.
echo 4. Ai pae para
echo.
echo 5. Eu nao vou fazer nada pq eu nao sou obrigada
echo.
echo O que vai fazer?-
ping localhost -n 1 >nul
ping localhost -n 1 >nul
ping localhost -n 1 >nul
ping localhost -n 1 >nul
cls
echo.
echo Minha vez.
echo                                                   %meme%: %user% DEF
echo Tipos de ataques:
echo                                                   %enemy%: %cpu% DEF
echo 1. E o que? - by Pablo V. x %cpuatk1%
echo.
echo 2. Que tiro foi esse? x %cpuatk2%
echo.
echo 3. Segura a Marimba Ai Monamour x %cpuatk3%
echo.
echo 4. Ai pae para
echo.
echo 5. Eu nao vou fazer nada pq eu nao sou obrigada
echo.
echo O que vai fazer?\
ping localhost -n 1 >nul
ping localhost -n 1 >nul
ping localhost -n 1 >nul
ping localhost -n 1 >nul
goto cpu1
:cpu2
cls
set /a choice=%random% %%6
if '%choice%'=='0' goto cpu2
if '%choice%'=='4' goto cpu2
if '%choice%'=='6' goto cpu2
echo.
echo Minha vez.
echo                                                   %meme%: %user% DEF
echo Tipos de ataques:
echo                                                   %enemy%: %cpu% DEF
echo 1. E o que? - by Pablo V. x %cpuatk1%
echo.
echo 2. Que tiro foi esse? x %cpuatk2%
echo.
echo 3. Segura a Marimba Ai Monamour x %cpuatk3%
echo.
echo 4. Ai pae para
echo.
echo 5. Eu nao vou fazer nada pq eu nao sou obrigada
echo.
echo O que vai fazer?%choice%
ping localhost -n 4 >nul
if '%choice%'=='1' goto cpuatk1
if '%choice%'=='2' goto cpuatk2
if '%choice%'=='3' goto cpuatk3
if '%choice%'=='5' goto gameplay
:cpuatk1
cls
if '%cpuatk1%'=='0' goto nocpuatk1
echo.
echo Eu mandei um "E o que?" ao vivo no show para %meme% completar!
echo.
ping localhost -n 4 >nul
echo Macho escroto!
echo.
echo %meme% cantou a musica da Pablo e pagou 400 Dilmaes no ingresso!
echo.
pause
ping localhost -n 4 >nul
set /a user=%user% - 400
set cpuatk1=0
if '%user%'=='0' goto cpuwin
if '%user%'=='-100' goto cpuwin
if '%user%'=='-200' goto cpuwin
if '%user%'=='-300' goto cpuwin
goto gameplay
:nocpuatk1
echo.
echo Eu nao posso mais mandar meus fas cantarem por mim!
echo.
ping localhost -n 4 >nul
set cpucount=0
goto cpu1
:cpuatk2
cls
if '%cpuatk2%'=='0' goto nocpuatk2
echo.
echo Eu mandei %meme% segurar minha marimba e %meme% gostou!
echo.
ping localhost -n 4 >nul
echo Machistas nao passarao!
echo.
echo %meme% tera que pagar 300 temeres pelo programa!
echo.
pause
ping localhost -n 4 >nul
set /a user=%user% - 300
set /a cpuatk2=%cpuatk2% - 1
if '%user%'=='0' goto cpuwin
if '%user%'=='-100' goto cpuwin
if '%user%'=='-200' goto cpuwin
if '%user%'=='-300' goto cpuwin
goto gameplay
:nocpuatk2
echo.
echo Eu ja estou mto fudida e nao posso mais fazer programa!
echo.
ping localhost -n 4 >nul
set cpucount=0
goto cpu1
:cpuatk3
cls
if '%cpuatk3%'=='0' goto nocpuatk3
echo.
echo Eu perguntei "Que tiro foi esse?" e %meme% foi baleada!
echo.
ping localhost -n 4 >nul
echo Que tiro foi esse viado?
echo.
echo %meme% gastou 200 mangos com despesas medicas!
echo.
pause
ping localhost -n 4 >nul
set /a user=%user% - 200
set /a cpuatk3=%cpuatk3% - 1
if '%user%'=='0' goto cpuwin
if '%user%'=='-100' goto cpuwin
if '%user%'=='-200' goto cpuwin
if '%user%'=='-300' goto cpuwin
goto gameplay
:nocpuatk3
echo.
echo Minhas balas acabaram, voce deu sorte!
echo.
ping localhost -n 4 >nul
set cpucount=0
goto cpu1
:cpuwin
cls
echo.
echo Voce so perdeu o seu tempo aqui, e ainda nem ganhou, animal.
echo.
pause
:cpuwin2
cls
echo.
echo Voce so perdeu o seu tempo aqui, e ainda nem ganhou, animal.
echo.
set /p replay=Digite qualquer tecla para continuar. Digite 'x' para sair:
if '%replay%'=='x' goto suggest
if '%replay%'=='' goto cpuwin2
goto jogadores
:p1name
cls
set p1name=
echo.
set /p p1name=Jogador 1, qual o seu primeiro nome?
if '%p1name%'=='' goto p1name
:p2name
cls
set p2name=
echo.
set /p p2name=Jogador 2, qual o seu primeiro nome?
if '%p2name%'=='%p1name%' goto p2name
if '%p2name%'=='' goto p2name
rem Codigo:
if '%p1name%'=='Iakim' goto p1win
if '%p2name%'=='Iakim' goto p2win
:p1meme
cls
set p1meme=
echo.
echo Eae %p1name%!
echo.
echo Escolha seu meme:
echo.
echo 1 - Vin Diesel
echo.
echo 2 - Cepo de Madeira
echo.
echo 3 - Jailson Mendes
echo.
set /p p1meme=1, 2 ou 3?
if '%p1meme%'=='1' goto p1meme1
if '%p1meme%'=='2' goto p1meme2
if '%p1meme%'=='3' goto p1meme3
goto p1meme
:p1meme1
set p1meme="Vin Diesel"
goto p2meme
:p1meme2
set p1meme="Cepo de Madeira"
goto p2meme
:p1meme3
set p1meme="Jailson Mendes"
:p2meme
cls
set p2meme=
echo.
echo Eae %p2name%!
echo.
echo Escolha seu meme:
echo.
echo 1 - Jojo Todinho
echo.
echo 2 - Pablo Vittar
echo.
echo 3 - Ines Brasil
echo.
set /p p2meme=1, 2 ou 3?
if '%p2meme%'=='1' goto p2meme1
if '%p2meme%'=='2' goto p2meme2
if '%p2meme%'=='3' goto p2meme3
goto p2meme
:na
cls
echo.
pause >nul
goto p2meme
:p2meme1
set p2meme="Jojo Todinho"
goto begin2
:p2meme2
set p2meme="Pablo Vittar"
goto begin2
:p2meme3
set p2meme="Ines Brasil"
:begin2
set p1health=1000
set p2health=1000
set p1atk1=1
set p1atk2=2
set p1atk3=3
set p2atk1=1
set p2atk2=2
set p2atk3=3
:p1gameplay
cls
set move=
set choice=
echo.
echo %p1name%, sua vez seu vagabundinho.
echo                                               %p1meme%: %p1health% DEF
echo Tipos de ataques:
echo                                               %p2meme%: %p2health% DEF
echo 1. Abre essa merda sua vagabunda x %p1atk1%
echo.
echo 2. Esse programa aqui ta uma porra x %p1atk2%
echo.
echo 3. Cabeca de gelo x %p1atk3%
echo.
echo 4. Ai pae para
echo.
echo 5. Nao vai subir ninguem
echo.
set /p move=O que vai fazer?
if '%move%'=='1' goto p1atk1
if '%move%'=='2' goto p1atk2
if '%move%'=='3' goto p1atk3
if '%move%'=='4' goto p1surrender
if '%move%'=='5' goto p2gameplay
goto p1gameplay
:p1atk1
cls
if '%p1atk1%'=='0' goto nop1atk1
echo.
echo %p1name% mandou %p2meme% abrir essa merda!
echo.
ping localhost -n 4 >nul
echo Se fodeo!
echo.
echo %p2meme% abriu essa merda e perdeu 400 real!
echo.
pause
set /a p2health=%p2health% - 400
set p1atk1=0
if '%p2health%'=='0' goto p1win
if '%p2health%'=='-100' goto p1win
if '%p2health%'=='-200' goto p1win
if '%p2health%'=='-300' goto p1win
goto p2gameplay
:nop1atk1
echo.
echo %p1name%, voce nao pode mais mandar essa vagabunda abrir essa merda!
echo.
pause
goto p1gameplay
:p1atk2
cls
if '%p1atk2%'=='0' goto nop1atk2
echo.
echo %p1name%, voce disse para %p2meme% ao vivo que esse programa esta uma porra!
echo.
ping localhost -n 4 >nul
echo Se fodeo!
echo.
echo %p2meme% ficou pianinho em rede nacional e pagou 300 real de multa!
echo.
pause
set /a p2health=%p2health% - 300
set /a p1atk2=%p1atk2% - 1
if '%p2health%'=='0' goto p1win
if '%p2health%'=='-100' goto p1win
if '%p2health%'=='-200' goto p1win
if '%p2health%'=='-300' goto p1win
goto p2gameplay
:nop1atk2
echo.
echo %p1name%, voce nao pode dizer que esse programa esta uma porra ao vivo!
echo.
pause
goto p1gameplay
:p1atk3
cls
if '%p1atk3%'=='0' goto nop1atk3
echo.
echo %p1name%, com a ajuda de  DJ Cleiton Rasta jogou uma cabeça de gelo em %p2meme%!
echo.
ping localhost -n 4 >nul
echo Se fodeo!
echo.
echo %p2meme% desmaiou e roubaram 200 pilas!
echo.
pause
set /a p2health=%p2health% - 200
set /a p1atk3=%p1atk3% - 1
if '%p2health%'=='0' goto p1win
if '%p2health%'=='-100' goto p1win
if '%p2health%'=='-200' goto p1win
if '%p2health%'=='-300' goto p1win
goto p2gameplay
:nop1atk3
echo.
echo DJ cleiton Rasta esta fazendo a galera debochar agora!
echo.
pause
goto p1gameplay
:p1surrender
cls
echo.
echo %p2name% virou fiatinho e mandou o papai parar...
echo.
pause
:p1surrender2
cls
echo.
echo %p2name% virou fiatinho e mandou o papai parar...
echo.
set /p replay=Digite qualquer tecla para continuar. Digite 'x' para sair:
if '%replay%'=='x' goto suggest
if '%replay%'=='' goto p1surrender2
goto jogadores
:p1win
cls
echo.
echo %p1name% Parabains, voce ganhou essa disgracaaa seu tijolinho de merda!!!
echo.
pause
:p1win2
cls
echo.
echo %p1name% Parabains, voce ganhou essa disgracaaa seu tijolinho de merda!!!
echo.
set /p replay=Digite qualquer tecla para continuar. Digite 'x' para sair:
if '%replay%'=='x' goto suggest
if '%replay%'=='' goto p1win2
goto jogadores
:p2gameplay
cls
set move=
set choice=
echo.
echo %p2name%, sua vez sua vagabundinha.
echo                                                %p2meme%: %p2health% DEF
echo Tipos de ataques:
echo                                                %p1meme%: %p1health% DEF
echo 1. E o que? - by Pablo V. x %p2atk1%
echo.
echo 2. Que tiro foi esse? x %p2atk2%
echo.
echo 3. Segura a Marimba Ai Monamour x %p2atk3%
echo.
echo 4. Ai pae para
echo.
echo 5. Eu nao vou fazer nada pq eu nao sou obrigada
echo.
set /p move=O que vai fazer?
if '%move%'=='1' goto p2atk1
if '%move%'=='2' goto p2atk2
if '%move%'=='3' goto p2atk3
if '%move%'=='4' goto p2surrender
if '%move%'=='5' goto p1gameplay
goto p2gameplay
:p2atk1
cls
if '%p2atk1%'=='0' goto nop2atk1
echo.
echo %p2name% mandou um "E o que?" ao vivo no show para %p1meme% completar!
echo.
ping localhost -n 4 >nul
echo Macho escroto!
echo.
echo %p1meme% cantou a musica da Pablo e pagou 400 Dilmaes no ingresso!
echo.
pause
set /a p1health=%p1health% - 400
set p2atk1=0
if '%p1health%'=='0' goto p2win
if '%p1health%'=='-100' goto p2win
if '%p1health%'=='-200' goto p2win
if '%p1health%'=='-300' goto p2win
goto p1gameplay
:nop2atk1
echo.
echo %p2name% nao pode mais mandar meus fas cantarem por ele!
echo.
pause
goto p2gameplay
:p2atk2
cls
if '%p2atk2%'=='0' goto nop2atk2
echo.
echo %p2name% mandou %p1meme% segurar minha marimba e %p1meme% gostou!
echo.
ping localhost -n 4 >nul
echo Machistas nao passarao!
echo.
echo %p1meme% tera que pagar 300 temeres pelo programa!
echo.
pause
set /a p1health=%p1health% - 300
set /a p2atk2=%p2atk2% - 1
if '%p1health%'=='0' goto p2win
if '%p1health%'=='-100' goto p2win
if '%p1health%'=='-200' goto p2win
if '%p1health%'=='-300' goto p2win
goto p1gameplay
:nop2atk2
echo.
echo %p2name% ja esta mto fudida e nao pode mais fazer programa!
echo.
pause
goto p2gameplay
:p2atk3
cls
if '%p2atk3%'=='0' goto nop2atk3
echo.
echo %p2name% perguntou "Que tiro foi esse?" e %p1meme% foi baleada!
echo.
ping localhost -n 4 >nul
echo Que tiro foi esse viado?
echo.
echo %p1meme% gastou 200 mangos com despesas medicas!
echo.
pause
set /a p1health=%p1health% - 200
set /a p2atk3=%p2atk3% - 1
if '%p1health%'=='0' goto p2win
if '%p1health%'=='-100' goto p2win
if '%p1health%'=='-200' goto p2win
if '%p1health%'=='-300' goto p2win
goto p1gameplay
:nop2atk3
echo.
echo Minhas balas acabaram, voce deu sorte!
echo.
pause
goto p2gameplay
:p2surrender
cls
echo.
echo %p1name% Parabains, voce ganhou essa disgracaaa seu tijolinho de merda!!!
echo.
pause
:p2surrender2
cls
echo.
echo %p1name% Parabains, voce ganhou essa disgracaaa seu tijolinho de merda!!!
echo.
set /p replay=Digite qualquer tecla para continuar. Digite 'x' para sair:
if '%replay%'=='x' goto suggest
if '%replay%'=='' goto p2surrender2
goto jogadores
:p2win
cls
echo.
echo %p2name% Parabains, voce ganhou essa disgracaaa seu tijolinho de merda!!!
echo.
pause
:p2win2
cls
echo.
echo %p2name% Parabains, voce ganhou essa disgracaaa seu tijolinho de merda!!!
echo.
set /p replay=Digite qualquer tecla para continuar. Digite 'x' para sair:
if '%replay%'=='x' goto suggest
if '%replay%'=='' goto p2win2
goto jogadores
:suggest
cls
echo.
echo Antes de sair, sugira um novo meme para o The Game Of Memes.
echo.
set /p suggestion=Qual a sugestao de meme:
if '%suggestion%'=='' goto suggest
echo %suggestion% >> memes.txt
