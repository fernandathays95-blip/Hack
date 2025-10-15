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
    # Note que o 'while true' fará com que o script fique em execução
    # até que seja interrompido manualmente (Ctrl+C).
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

    # Este echo -e "${COR_RESET}" nunca será alcançado devido ao loop 'while true'
    # mas é bom mantê-lo para boas práticas, caso o loop seja alterado.
    echo -e "${COR_RESET}" 
}

# =======================================================
# LÓGICA DE COMANDO PRINCIPAL
# =======================================================

# Exibe o banner por padrão se não houver argumentos
if [ $# -eq 0 ]; then
    exibir_banner
    echo -e "${COR_VERDE} Use: $0 banner ou $0 start${COR_RESET}"
    # O script simplesmente termina aqui, sem 'exit'.
    # Isso deve manter a sessão do Termux aberta.
elif [ "$1" == "banner" ]; then
    exibir_banner
    # O script simplesmente termina aqui, sem 'exit'.
elif [ "$1" == "start" ]; then
    # Esta função entrará em loop infinito.
    iniciar_loop
    # Como iniciar_loop é um loop infinito, o script ficará preso aqui
    # até ser interrompido com Ctrl+C.
else
    # Caso de argumento desconhecido
    exibir_banner
    echo -e "${COR_VERDE}ERRO: Comando '$1' desconhecido.${COR_RESET}"
    echo -e "${COR_VERDE} Use: $0 banner ou $0 start${COR_RESET}"
    # O script simplesmente termina aqui, sem 'exit'.
fi

# Não há 'exit' no final. O script termina com sucesso
# e devolve o controle ao shell, mantendo o Termux aberto.
