#!/usr/bin/env bash
clear
echo "inicio da verificação"
echo 
#read -p "Digite função a ser avaliada: " func
#echo
#echo "A função escolhida para verificação foi: $func."
#echo
[ $# -ne 1 ] && echo "OPA! insira apenas 1 argumento para o script" && exit 1 || echo "total de argumentos validado"
echo
funcao=$($1)
echo
echo $funcao
echo
verifica=$(help $1)
echo $verifica &> /dev/null
[ $? -eq 0 ] && echo "função $1 escolhida é builtin" || echo "função $1 escolhida NÃO é builtin"
echo
echo "fim da verificação"

