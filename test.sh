#!/bin/bash
echo content-type: text/html
echo

DATA=$(date)
USUARIO=$(whoami)
HOST=$(hostname)
IP=$(ip a | grep /24 | tr -s ' ' | cut -d ' ' -f 3)
UPTIME=$(uptime -p)
SINCE=$(uptime -s)
SYSTEM=$(lsb_release -d | tr -s ' ' | cut -f 2)

echo "<!DOCTYPE html>"
echo "  <html lang="pt-br">"
echo "  <head>"
echo "          <title>HOST - $HOST</title>"
echo "          <meta charset="utf-8">"
echo "  </head>"
echo "  <body>"
echo "          <h1>Informações</h1>"
echo "          <p>Hoje é $DATA</p>"
echo "          <p>Usuário ativo é $USUARIO</p>"
echo "          <p>O endereço IP deste host é: $IP</p>"
echo "          <p>O uptime é de $UPTIME desde $SINCE</p>"
echo "		<p>Sistima Operacional: $SYSTEM</p>"
echo ""
echo ""
echo "		<h1>Comandos/Relatórios</h1>"
echo "		<p><a href="./top.sh">Memória e Processos (top)</a></p>"
echo "		</p><a href="./df.sh">Uso de disco por diretório (df)</a></p>"
echo "  </body>"
echo "</html>"
