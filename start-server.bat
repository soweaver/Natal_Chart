@echo off
REM Serve Natal Chart Calculator on 127.0.0.1:8080 (for Tailscale Funnel /natal).
setlocal
cd /d "%~dp0"

if not exist "index.html" (
    copy /Y "Natal Chart Calculator.html" "index.html" >nul
)

echo Serving %CD% at http://127.0.0.1:8080/
echo Funnel URL: https://soweaver.tail9e4160.ts.net/natal/
python -m http.server 8080 --bind 127.0.0.1
