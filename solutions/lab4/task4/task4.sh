#!/bin/bash

mkdir task4
cd task4/

cp ../../lab1/task2/inventory .
cp ../../lab1/task2/ansible.cfg .

# Use the below command to remove the packages if they already exist 
ansible all -m shell -a "yum remove mariadb-server python3-PyMySQL -y"

vi task4.yaml
ansible all -m setup | less
mkdir vars/
vi vars/packages
vi task4.yaml 
ansible-doc mysql_user | grep '^='
ansible-doc mysql_user | grep EXAMPLES -A3000 | less
vi task4.yaml 
ansible all -m shell -a "systemctl status crond" 
ansible all -m shell -a "ls -ltr /usr/lib/systemd/system/ | grep -i maria" 
vi task4.yaml 
ansible-doc shell | grep EXAMPLES -A3000 | less
vi task4.yaml
ansible-doc debug | grep EXAMPLES -A3000 | less
vi task4.yaml
ansible-playbook --syntax-check task4.yaml
ansible-playbook task4.yaml

