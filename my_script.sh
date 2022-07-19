#!/usr/bin/env bash

init='********************* inicio do processo ****************************'
echo $init
echo --------------------------------------

new_dir='my_new_dir'
mkdir $new_dir
cd /home/ec2-user/my_dir/$new_dir
echo "" > my_new_file_test_crontab.txt
chmod 777 my_new_file_test_crontab.txt

finish='********************* fim do processo bash *************************'
echo $finish

echo 'processo finalizado com sucesso'
