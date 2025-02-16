@echo off
echo.
start files\README.txt
if exist files\Read.true (
    set "Obfuscate=true"
) else (
    echo. >>files\Read.true
)
if "%Obfuscate%" EQU "true" ( files\lua\lua54.exe files\Prometheus\cli.lua --preset Strong --nocolors --LuaU script.lua )
exit