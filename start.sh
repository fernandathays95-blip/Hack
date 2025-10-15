#!/bin/bash

# =======================================================
# CONFIGURAÇÕES
# =======================================================

# Define a cor Verde Brilhante e reset
COR_VERDE="\033[1;32m"
COR_RESET="\033[0m"

# =======================================================
# FUNÇÃO PARA INICIAR O LOOP
# =======================================================

function iniciar_loop() {
    clear
    echo -e "${COR_VERDE}================================================="
    echo "[ INICIANDO PROCESSO DE SINCRONIZAÇÃO DE DADOS ]"
    echo "================================================="
    echo ""

    CONTADOR=$((RANDOM % 1000 + 10000))

    # Loop infinito (while true)
    while true; do
        HEX_BLOCO=$(printf '0x%04x' $CONTADOR)
        USER_ID=$((RANDOM % 9999 + 1000))
        
        echo "STATUS: USER_ID:$USER_ID | Bloco $HEX_BLOCO... [ ENVIANDO PACOTES ]"
        
        CONTADOR=$((CONTADOR + 1))
        
        sleep 0.03 
    done

    echo -e "${COR_RESET}"
}

# =======================================================
# LÓGICA PRINCIPAL (APENAS INICIA O LOOP)
# =======================================================

iniciar_loop

# O script ficará preso em 'iniciar_loop' até Ctrl+C.
