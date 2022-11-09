@echo off

"%~dp0/converter.exe" excel-modules-to-jsonl-modules --input "%~dpnx1" --output "%~dpnx1.json" --errors "%~dpnx1.err.txt"

echo.
echo DONE
pause
