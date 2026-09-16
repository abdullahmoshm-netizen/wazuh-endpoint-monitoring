@echo off

REM =========================
REM Wazuh Agent Installation
REM =========================

if not exist "C:\Program Files (x86)\ossec-agent\wazuh-agent.exe" (
    msiexec.exe /i "\\lab.local\SYSVOL\lab.local\scripts\wazuh\wazuh-agent-4.14.7-1.msi" /qn WAZUH_MANAGER="192.168.1.93" WAZUH_REGISTRATION_SERVER="192.168.1.93" WAZUH_AGENT_NAME="%COMPUTERNAME%" /L*v "C:\Windows\Temp\wazuh-install.log"
)

REM Start Wazuh Agent
sc start WazuhSvc >nul 2>&1


REM =========================
REM Sysmon
REM =========================

sc query Sysmon64 >nul 2>&1

if %errorlevel%==0 (
    "\\lab.local\SYSVOL\lab.local\scripts\Sysmon\Sysmon64.exe" -c "\\lab.local\SYSVOL\lab.local\scripts\Sysmon\sysmonconfig.xml"
) else (
    "\\lab.local\SYSVOL\lab.local\scripts\Sysmon\Sysmon64.exe" -accepteula -i "\\lab.local\SYSVOL\lab.local\scripts\Sysmon\sysmonconfig.xml"
)

exit /b 0