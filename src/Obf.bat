@echo off
echo.
if exist files\Read.true (
    set "Obfuscate=true"
) else (
    start files\README.txt
    echo. >>files\Read.true
)
if "%Obfuscate%" EQU "true" ( files\lua\lua54.exe files\Prometheus\cli.lua --preset Medium --nocolors --LuaU script.lua )
exit
