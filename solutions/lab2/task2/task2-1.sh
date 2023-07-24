#!/bin/bash

mkdir task2
cd task2/

cp ../task1/inventory .
cp ../task1/ansible.cfg .

mkdir vars/
echo "user: roger" >> vars/users.yaml
cat vars/users.yaml
vi task2-1.yaml
ansible-doc -t keyword vars_files 
ansible-doc user | grep '^='
ansible-doc user | grep EXAMPLES -A3000 | less
ansible-doc shell | grep '^='
ansible-doc shell | grep EXAMPLES -A3000 | less
ansible-doc debug | grep '^='
ansible-doc debug | grep EXAMPLES -A3000 | less
ansible-playbook --syntax-check task2-1.yaml 
ansible-playbook task2-1.yaml 
