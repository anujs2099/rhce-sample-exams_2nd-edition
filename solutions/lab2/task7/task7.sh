#!/bin/bash

mkdir task7
cd task7/

cp ../task1/inventory .
cp ../task1/ansible.cfg .

mkdir group_vars
echo "user: teddy" > group_vars/all
tree
vi task7.yaml
ansible-doc user | grep '^='
ansible-doc user | grep EXAMPLES -A3000 | less
vi task7.yaml
ansible-doc shell | grep '^='
ansible-doc shell | grep EXAMPLES -A3000 | less
vi task7.yaml
ansible-playbook --syntax-check task7.yaml 
ansible-playbook task7.yaml 
