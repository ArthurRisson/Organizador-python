# Organizador de Ficheiros Automático

Utilitário simples em **Python** que organiza automaticamente os ficheiros da pasta onde é executado, agrupando-os em subpastas por tipo (Imagens, Documentos e Outros), mantendo o diretório limpo e organizado.

## 🚀 Funcionalidades

Ao executar o programa, ele:

- Analisa todos os ficheiros da pasta atual
- Cria pastas automaticamente
- Move os ficheiros para as seguintes categorias:
  - 📂 Imagens_Organizadas (`.jpg`, `.jpeg`, `.png`, `.gif`, `.bmp`, etc.)
  - 📂 Documentos_Organizados (`.pdf`, `.docx`, `.txt`, `.xlsx`, etc.)
  - 📂 Outros_Arquivos (demais formatos)

O próprio script/executável e pastas existentes são ignorados para evitar erros.

## ▶️ Como Usar

### Executar com Python

python organizador.py

### Executar como Executável (Windows)

1. Coloque o Organizador.exe na pasta desejada  
2. Dê duplo clique ou execute:

.\Organizador.exe

## 🛠️ Como Compilar (Build)

### Pré-requisitos

- Python 3.x instalado  
- Windows  
- pip disponível  

### Passo a passo

1. Mantenha estes ficheiros na mesma pasta:
   - organizador.py  
   - build.bat  
   - build.ps1  

2. Execute:

build.bat

3. O script irá:
   - Verificar o Python  
   - Instalar o pyinstaller, se necessário  
   - Criar o executável  

4. O resultado será gerado em:

dist/Organizador.exe

## 📁 Estrutura do Projeto

.
├── organizador.py  
├── build.bat  
├── build.ps1  
├── Organizador.spec  
└── dist/  
    └── Organizador.exe  

## ⚠️ Aviso Importante

Não execute o programa em pastas de sistema, como:

C:\Windows  
C:\Program Files  

Use apenas em pastas pessoais, como:

Transferências  
Área de Trabalho  
Documentos  

## 🧩 Personalização

Para adicionar ou remover tipos de ficheiros, edite o ficheiro organizador.py e ajuste as extensões dentro do dicionário de categorias.

## 📄 Licença

Este projeto é livre para uso e modificação. Adicione uma licença (por exemplo, MIT) caso publique o projeto.

Feito para ser simples, rápido e útil ✅
