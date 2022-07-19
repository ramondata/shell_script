#!/usr/bin/env bash

clear

echo "inicio do processo"

# criando o arquivo

name_var=$1

#testa numero de argumentos

[ $# -ne 1 ] && echo "Apenas 1 argumento é permitido" && exit 1 || echo "numero de argumentos correto (total de 1 arg)"

#testa se o arquivo existe

[ -f $name_var ] && echo "Arquivo ja existe, encerrando processo com falha..." && exit 1 || echo "Correto, prosseguindo com o processo"

header="
# ---------------------------------
# script    :
# descrição :
# versão    :
# autor      :
# data       :
# licença    :
# ---------------------------------
# como usar :
# ---------------------------------
"

echo "#!/usr/bin/env bash $header" > $name_var

#permissao do arquivo

chmod +x $name_var

#editando o arquivo

vi $name_var

