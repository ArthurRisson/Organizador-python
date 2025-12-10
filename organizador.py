import os
import shutil
import sys

if getattr(sys, 'frozen', False):
    pasta_raiz = os.path.dirname(sys.executable)
else:
    pasta_raiz = os.path.dirname(os.path.abspath(__file__))

caminho_origem = pasta_raiz

caminho_imagens = os.path.join(pasta_raiz, "Imagens_Organizadas")
caminho_documentos = os.path.join(pasta_raiz, "Documentos_Organizados")
caminho_outros = os.path.join(pasta_raiz, "Outros_Arquivos")

extensoes_imagem = ['.jpg', '.jpeg', '.png', '.gif', '.bmp', '.webp', '.svg', '.ico', '.tiff']
extensoes_documento = ['.pdf', '.doc', '.docx', '.txt', '.xlsx', '.xls', '.pptx', '.ppt', '.odt', '.rtf']

print(f"Organizando arquivos em: {caminho_origem}")

arquivos = os.listdir(caminho_origem)

for arquivo in arquivos:
    caminho_arquivo_antigo = os.path.join(caminho_origem, arquivo)
    
    if arquivo.endswith(".exe") or arquivo.endswith(".py"):
        continue

    if os.path.isdir(caminho_arquivo_antigo):
        continue
    
    nome, extensao = os.path.splitext(arquivo)
    extensao = extensao.lower()
    
    if not extensao:
        continue
    
    caminho_destino = None
    tipo = ""

    if extensao in extensoes_imagem:
        caminho_destino = caminho_imagens
        tipo = "IMAGEM"
    elif extensao in extensoes_documento:
        caminho_destino = caminho_documentos
        tipo = "DOCUMENTO"
    else:
        caminho_destino = caminho_outros
        tipo = "OUTROS"

    if not os.path.exists(caminho_destino):
        os.makedirs(caminho_destino)

    caminho_arquivo_novo = os.path.join(caminho_destino, arquivo)
    
    if not os.path.exists(caminho_arquivo_novo):
        try:
            shutil.move(caminho_arquivo_antigo, caminho_arquivo_novo)
            print(f"Movido [{tipo}]: {arquivo}")
        except Exception as e:
            print(f"Erro ao mover {arquivo}: {e}")
    else:
        print(f"Pulado: {arquivo} (já existe no destino)")

print("-" * 50)
print("Organização concluída!")
input("Pressione ENTER para fechar...")