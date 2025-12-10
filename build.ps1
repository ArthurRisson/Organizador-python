# Script de Build - Converte organizador.py em organizador.exe

Write-Host "================================" -ForegroundColor Cyan
Write-Host "Build Script - Organizador" -ForegroundColor Cyan
Write-Host "================================" -ForegroundColor Cyan
Write-Host ""

# Define o caminho do Python
$pythonPath = "C:\Users\Usuario\AppData\Local\Python\pythoncore-3.14-64\python.exe"
$pyinstallerPath = "C:\Users\Usuario\AppData\Local\Python\pythoncore-3.14-64\Scripts\pyinstaller.exe"

# Verifica se Python existe
if (-not (Test-Path $pythonPath)) {
    Write-Host "Erro: Python não encontrado em $pythonPath" -ForegroundColor Red
    exit
}

# Verifica se PyInstaller está instalado
Write-Host "Verificando PyInstaller..." -ForegroundColor Yellow
$pyinstaller = & $pythonPath -m pip list | Select-String "pyinstaller"

if (-not $pyinstaller) {
    Write-Host "PyInstaller não encontrado. Instalando..." -ForegroundColor Yellow
    & $pythonPath -m pip install pyinstaller
} else {
    Write-Host "PyInstaller já está instalado!" -ForegroundColor Green
}

Write-Host ""
Write-Host "Iniciando build..." -ForegroundColor Yellow
Write-Host ""

# Limpa builds anteriores
if (Test-Path "dist") {
    Remove-Item -Path "dist" -Recurse -Force
    Write-Host "Pasta 'dist' removida" -ForegroundColor Gray
}

if (Test-Path "build") {
    Remove-Item -Path "build" -Recurse -Force
    Write-Host "Pasta 'build' removida" -ForegroundColor Gray
}

if (Test-Path "organizador.spec") {
    Remove-Item -Path "organizador.spec" -Force
    Write-Host "Arquivo 'organizador.spec' removido" -ForegroundColor Gray
}

Write-Host ""

# Executa PyInstaller
Write-Host "Convertendo em executável..." -ForegroundColor Yellow
& $pyinstallerPath --onefile --windowed --name "Organizador" --distpath "./dist" organizador.py

Write-Host ""

# Verifica se foi criado com sucesso
if (Test-Path "dist/Organizador.exe") {
    Write-Host "✓ Build concluído com sucesso!" -ForegroundColor Green
    Write-Host ""
    Write-Host "Arquivo gerado: $(Get-Item 'dist/Organizador.exe' | Select-Object -ExpandProperty FullName)" -ForegroundColor Green
    Write-Host ""
    Write-Host "Você pode agora:" -ForegroundColor Cyan
    Write-Host "  1. Compartilhar o arquivo 'dist/Organizador.exe'" -ForegroundColor White
    Write-Host "  2. Executar em qualquer computador (sem necessidade de Python)" -ForegroundColor White
    Write-Host ""
} else {
    Write-Host "✗ Erro no build!" -ForegroundColor Red
}

Write-Host "Pressione qualquer tecla para fechar..." -ForegroundColor Gray
$null = $Host.UI.RawUI.ReadKey("NoEcho,IncludeKeyDown")
