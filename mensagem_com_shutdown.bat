@echo off

set dest=dest-computer.domain.local

shutdown -r -t 500 -m \\%dest% -c "Atenção chegou chatuba, hein?"
timeout 10
shutdown -a -m \\%dest%
