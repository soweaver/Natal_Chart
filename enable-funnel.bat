@echo off
REM Publish Natal Chart on Tailscale Funnel at /natal (leaves / free for Vine Monitor).
REM Requires a local HTTP server already listening on 127.0.0.1:8080.

where tailscale >nul 2>&1
if errorlevel 1 (
    echo tailscale.exe not found on PATH.
    exit /b 1
)

tailscale funnel --bg --yes --set-path=/natal 8080
if errorlevel 1 (
    echo Failed to enable Funnel for Natal Chart.
    exit /b 1
)

echo Natal Chart Funnel: https://soweaver.tail9e4160.ts.net/natal/
exit /b 0
