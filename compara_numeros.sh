#!/usr/bin/env bash 
# ---------------------------------
# script    : comparador de numeros
# descrição : compara numeros com range e numero focal, solicitando nuemro comparativo
# versão    : 1.0 
# autor     : Ramon Barbosa de Freitas
# data      : echo $(date +'%Y-%m-%d')
# licença   :
# ---------------------------------
# como usar :
# ---------------------------------

echo $(clear)

# mensagem ao usuario

echo " Esse script serve para comparar seu numero informado com o numero $1"
echo
read -p "Insira um numero de $2 a $3: " num_usr

limite_superior=$3
limite_inferior=$2
numero_comparavel=$1

#verifica se foi digitado um numero e não uma string

[[ ! $num_usr =~ ^[0-9]+$ ]] && echo "Entre com um numero e não com um texto" && exit 1

#verifica se o numero solicitado está no range

[[ $num_usr -lt $limite_inferior || $num_usr -gt $limite_superior ]] && echo "Fora do range permitido" && exit 1

#Analisa os numeros e lança a resposta ao usuario

[ $num_usr -eq $numero_comparavel ] && echo "Seu numero $num_usr é igual ao numero $numero_comparavel" && exit 0
[ $num_usr -lt $numero_comparavel ] && echo "Seu numero $num_usr é menor que $numero_comparavel" && exit 0
[ $num_usr -gt $numero_comparavel ] && echo "Seu numero $num_usr é maior que $numero_comparavel" && exit 0

