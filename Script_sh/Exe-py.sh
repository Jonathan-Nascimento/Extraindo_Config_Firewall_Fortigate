#!/bin/bash

# Cores
VERDE='\033[0;32m'  # Verde para sucesso
VERMELHO='\033[0;31m'  # Vermelho para erro
RESET='\033[0m'  # Reseta a cor

# Crirar diretorio extraido
mkdir ../extraido

echo -e "${VERDE}Diretorio "EXTRAIDO" criado com sucesso.${RESET}"

# Caminho onde estão localizados os scripts
PASTA_SCRIPTS="../Script_py"  # Substitua pelo caminho correto, se necessário

# Executar todos os scripts que começam com "extrair_config_"
for script in ${PASTA_SCRIPTS}/extrair_config_*.py; do
    echo "Executando $script..."
    python3 "$script"

    # Verificar se o script foi bem-sucedido antes de continuar
    if [ $? -eq 0 ]; then
        echo -e "${VERDE}$script executado com sucesso!${RESET}"
    else
        echo -e "${VERMELHO}Erro ao executar $script${RESET}"
        exit 1
    fi
done

echo -e "${VERDE}Todos os scripts Python foram executados.${RESET}"

bash rm_ID_config_firewall_address.sh
bash rm_ID_config_firewall_addrgrp.sh
bash rm_ID_config_firewall_policy.sh
bash rm_ID_config_firewall_vip.sh

echo -e "${VERDE}Todos os scripts para remover o UUID foram executados.${RESET}"
