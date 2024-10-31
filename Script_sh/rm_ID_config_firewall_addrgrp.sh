#!/bin/bash

# Caminho para o arquivo de backup e o arquivo final de endereços
ARQUIVO_CONFIG="../Backup-Firewall.conf"
PASTA_SAIDA="../extraido"
ARQUIVO_EXTRAIDO="$PASTA_SAIDA/config_firewall_addrgrp.cfg"
ARQUIVO_FILTRADO="$PASTA_SAIDA/no_ID_config_firewall_addrgrp.cfg"

# Verifica se a pasta de saída existe, se não, cria
if [ ! -d "$PASTA_SAIDA" ]; then
    mkdir -p "$PASTA_SAIDA"
fi

# Executa o script Python para extrair os endereços
python3 <<EOF
import re

def extrair_enderecos(arquivo):
    with open(arquivo, 'r') as f:
        config = f.read()

    pattern = r"config firewall addrgrp\n(.*?)\nend"
    enderecos = []
    for match in re.finditer(pattern, config, re.DOTALL):
        bloco = match.group(1)
        enderecos.extend(linha.strip() for linha in bloco.splitlines())

    return enderecos

# Extraindo endereços
arquivo = "$ARQUIVO_CONFIG"
todos_enderecos = extrair_enderecos(arquivo)

# Salvando os endereços em um arquivo
with open('$ARQUIVO_EXTRAIDO', 'w') as f:
    for endereco in todos_enderecos:
        f.write(endereco + '\n')
EOF

# Agora executa a filtragem no arquivo extraído
cat "$ARQUIVO_EXTRAIDO" | grep -v "^set uuid" | grep -v "^set associated-interface" > "$ARQUIVO_FILTRADO"

# Exibe uma mensagem de conclusão
echo "Configurações extraídas e filtradas. Arquivo final salvo em: $ARQUIVO_FILTRADO"
