@echo off
setlocal
title CUBE 2x2 SOLVER
cd /d "%~dp0"

where node >nul 2>nul
if errorlevel 1 (
  echo Node.js tidak ditemukan.
  echo Install Node.js LTS dulu dari https://nodejs.org
  pause
  exit /b 1
)

if not exist "node_modules" (
  echo Memasang dependency...
  call npm install
  if errorlevel 1 (
    echo Gagal menjalankan npm install.
    pause
    exit /b 1
  )
)

echo Menjalankan CUBE 2x2 SOLVER...
echo Browser akan terbuka otomatis.
echo Tekan Ctrl+C di jendela ini untuk menghentikan server.
echo.

call npm run dev -- --open

echo.
echo Server berhenti. Tekan tombol apa saja untuk menutup.
pause >nul
