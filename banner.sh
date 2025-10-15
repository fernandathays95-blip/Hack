#!/bin/bash

# =======================================================
# CONFIGURAÇÕES
# =======================================================

# Define a cor Verde Brilhante e reset
COR_VERDE="\033[1;32m"
COR_RESET="\033[0m"

# Caractere de Bloco Completo (Full Block) para o visual: █
BLOCO="█"

# =======================================================
# FUNÇÃO PARA EXIBIR O BANNER
# =======================================================

function exibir_banner_bloco() {
    clear
    echo -e "${COR_VERDE}"
    
    # Linha superior e inferior do quadro
    LINHA="================================================="
    
    # O banner usando blocos para um visual mais "quadrado"
    echo "  ${BLOCO}${BLOCO}${BLOCO}${BLOCO}${BLOCO}${BLOCO}${BLOCO}${BLOCO}${BLOCO}${BLOCO}${BLOCO}${BLOCO}${BLOCO}${BLOCO}${BLOCO}${BLOCO}${BLOCO}${BLOCO}${BLOCO}${BLOCO}${BLOCO}${BLOCO}${BLOCO}${BLOCO}${BLOCO}${BLOCO}${BLOCO}${BLOCO}${BLOCO}${BLOCO}${BLOCO}${BLOCO}${BLOCO}${BLOCO}${BLOCO}${BLOCO}${BLOCO}${BLOCO}${BLOCO}"
    echo "  ${BLOCO}  __  __   _   ___  ___ __  __  ${BLOCO}"
    echo "  ${BLOCO} |  \/  | /_\ | _ \| __|  \/  | ${BLOCO}"
    echo "  ${BLOCO} | |\/| |/ _ \|   /| _| | |\/| | ${BLOCO}"
    echo "  ${BLOCO} |_|  |_/_/ \_|_\_\ |___|_|  |_| ${BLOCO}"
    echo "  ${BLOCO}${BLOCO}${BLOCO}${BLOCO}${BLOCO}${BLOCO}${BLOCO}${BLOCO}${BLOCO}${BLOCO}${BLOCO}${BLOCO}${BLOCO}${BLOCO}${BLOCO}${BLOCO}${BLOCO}${BLOCO}${BLOCO}${BLOCO}${BLOCO}${BLOCO}${BLOCO}${BLOCO}${BLOCO}${BLOCO}${BLOCO}${BLOCO}${BLOCO}${BLOCO}${BLOCO}${BLOCO}${BLOCO}${BLOCO}${BLOCO}${BLOCO}${BLOCO}${BLOCO}${BLOCO}"
    echo ""
    echo "${LINHA}"
    echo "  Termux Remote Access Tool V1.0.1 | STATUS: OFFLINE "
    echo "${LINHA}"
    echo -e "${COR_RESET}"
}

# =======================================================
# LÓGICA PRINCIPAL (APENAS EXIBE O BANNER)
# =======================================================

exibir_banner_bloco
echo -e "${COR_VERDE} Use: $0 start para iniciar a sincronização.${COR_RESET}"

# O script termina aqui naturalmente, sem usar 'exit',
# o que garante que a sessão do Termux permaneça aberta.

