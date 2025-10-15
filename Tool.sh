#!/bin/bash

# =======================================================
# CONFIGURAÇÕES
# =======================================================

# Define a cor Verde Brilhante e reset
COR_VERDE="\033[1;32m"
COR_RESET="\033[0m"
NOME_PROG="HACK" # Nome do programa para o banner
NOME_PROG_COMPLETO="Termux Remote Access Tool"

# =======================================================
# FUNÇÕES
# =======================================================

# Função para exibir o banner
function exibir_banner() {
    clear
    echo -e "${COR_VERDE}"
    echo "  __  __   _   ___  ___ __  __ "
    echo " |  \/  | /_\ | _ \| __|  \/  |"
    echo " | |\/| |/ _ \|   /| _| | |\/| |"
    echo " |_|  |_/_/ \_|_\_\ |___|_|  |_|"
    echo ""
    echo "================================================="
    echo "  ${NOME_PROG_COMPLETO} V1.0.1 | STATUS: OFFLINE "
    echo "================================================="
    echo -e "${COR_RESET}"
}

# Função para iniciar o loop de status (comando 'start')
function iniciar_loop() {
    clear
    echo -e "${COR_VERDE}================================================="
    echo "[ INICIANDO PROCESSO DE SINCRONIZAÇÃO DE DADOS ]"
    echo "================================================="
    echo ""

    # Inicia o contador em um valor aleatório alto
    CONTADOR=$((RANDOM % 1000 + 10000))

    # Loop infinito (while true)
    while true; do
        HEX_BLOCO=$(printf '0x%04x' $CONTADOR)
        USER_ID=$((RANDOM % 9999 + 1000))
        
        # O texto exatamente como você pediu
        echo "STATUS: USER_ID:$USER_ID | Bloco $HEX_BLOCO... [ ENVIANDO PACOTES ]"
        
        CONTADOR=$((CONTADOR + 1))
        
        # Pausa muito curta para o efeito de 'yes' controlado
        sleep 0.03 
    done

    echo -e "${COR_RESET}"
}

# =======================================================
# LÓGICA DE COMANDO PRINCIPAL
# =======================================================

# Exibe o banner por padrão se não houver argumentos
if [ $# -eq 0 ]; then
    exibir_banner
    echo -e "${COR_VERDE} Use: $0 banner ou $0 start${COR_RESET}"
    exit 0
fi

# Verifica o argumento passado
case "$1" in
    "banner")
        exibir_banner
        ;;
    "start")
        iniciar_loop
        ;;
    *)
        exibir_banner
        echo -e "${COR_VERDE}ERRO: Comando '$1' desconhecido.${COR_RESET}"
        echo -e "${COR_VERDE} Use: $0 banner ou $0 start${COR_RESET}"
        exit 1
        ;;
esac
