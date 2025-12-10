# 📂 Organizador de Arquivos Automático

> Um utilitário simples, rápido e eficiente em Python para manter suas pastas organizadas automaticamente.

![Badge License](https://img.shields.io/badge/license-MIT-green) ![Badge Python](https://img.shields.io/badge/python-3.x-blue)

## 📖 Sobre o Projeto

Este projeto é um script de automação que analisa os arquivos de uma pasta e os organiza automaticamente em subpastas conforme o tipo de arquivo.

É ideal para manter organizadas pastas como **Downloads**, **Área de Trabalho** e **Documentos**.

O programa é **portátil**:
- Pode ser executado como script Python
- Ou como executável `.exe` no Windows, sem instalação de dependências pelo usuário final

## 🚀 Funcionalidades

Ao executar o programa, ele:

1. Analisa todos os arquivos do diretório atual
2. Cria automaticamente as pastas:
   - `Imagens_Organizadas/` — `.jpg`, `.jpeg`, `.png`, `.gif`, `.bmp`
   - `Documentos_Organizados/` — `.pdf`, `.docx`, `.xlsx`, `.txt`, `.pptx`
   - `Outros_Arquivos/` — arquivos não identificados
3. Move os arquivos de forma segura
4. Ignora o próprio script e o executável para evitar conflitos

## 📦 Como Baixar e Usar

### Opção 1 — Usar o Executável (Recomendado)

1. Vá até a aba **Releases** do repositório
2. Baixe o arquivo `Organizador.exe`
3. Coloque o arquivo na pasta que deseja organizar
4. Execute o arquivo com duplo clique

### Opção 2 — Rodar Pelo Código Fonte

Pré-requisito: ter o **Python 3.x** instalado.

git clone https://github.com/arthurrisson/organizador-python.git  
cd organizador-python  
python organizador.py  

## 🛠️ Como Criar o Executável (Build)

Instale o PyInstaller:

pip install pyinstaller  

Gere o executável:

python -m PyInstaller --onefile --name "Organizador" organizador.py  

O arquivo final será criado em:

dist/Organizador.exe  

## ⚠️ Aviso Importante

O programa organiza a **pasta onde ele é executado**.

Não utilize em pastas de sistema, como:

C:\Windows  
C:\Program Files  

Recomendado o uso em:

Downloads  
Documentos  
Área de Trabalho  

## 🤝 Contribuição

Você pode contribuir com:

- Fork do projeto
- Envio de Pull Requests
- Sugestões de melhorias:
  - Organização por data
  - Suporte a músicas e vídeos
  - Interface gráfica (GUI)

## 📄 Licença

Este projeto está sob a licença MIT.  
Use, modifique e distribua livremente.
