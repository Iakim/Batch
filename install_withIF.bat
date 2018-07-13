rem Alterando o Antívirus da Rede por .bat + GPO

IF EXIST "C:\Program Files (x86)\McAfee\Endpoint Security\Endpoint Security Platform\MFEConsole.exe" (GOTO :uninstall) ELSE (GOTO :64)

:64
IF EXIST "C:\Program Files\McAfee\Endpoint Security\Endpoint Security Platform\MFEConsole.exe" (GOTO :uninstall) ELSE (GOTO :install)

:uninstall
xcopy /Q /E /Y \\domain.local\NETLOGON\MFERemoval_Msi\MFERemoval100novo2018.exe C:\
timeout 7
C:\MFERemoval100novo2018.exe /all
GOTO :end

:install
IF EXIST "C:\Program Files (x86)\Trend Micro\OfficeScan Client\PccNTMon.exe" (GOTO :end) ELSE (GOTO :trend)

:trend
xcopy \\domain.local\NETLOGON\TrendMicro\InstaladorTrendmicro_10072018.msi c:\
timeout 5
msiexec /i c:\InstaladorTrendmicro_10072018.msi /qn
timeout 60
"C:\Program Files (x86)\Trend Micro\OfficeScan Client\PccNTMon.exe"

:end
echo "Install ok!"
