#!/usr/bin/env bash 
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

path_file=$1

user_add="chmod u+rwx $path_file"
group_add="chmod g+rwx $path_file"
#all_add="chmod a+rwx $path_file"

read -p "Que tipo de usuário vc é (u-user ou g-group) ? " type_user

[[ ! $type_user =~ [uga] ]] && echo "Tipo de usuário não permitido" && exit 1

[[ $type_user -eq "u" ]] && echo $($user_add) && exit 0

[[ $type_user -eq "g" ]] && echo $($group_add) && exit 0

#[[ $type_user -eq "a" ]] && echo $($all_add) && exit 0
