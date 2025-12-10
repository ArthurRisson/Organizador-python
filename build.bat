@echo off
title Organizador - Build
color 0A

echo.
echo ================================
echo  Build Script - Organizador
echo ================================
echo.

REM Executa o script PowerShell
powershell -ExecutionPolicy Bypass -File "%~dp0build.ps1"

pause
