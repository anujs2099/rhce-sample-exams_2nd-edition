#!/bin/bash

mkdir task6
cd task6/

cp ../task1/inventory .
cp ../task1/ansible.cfg .

cat inventory
mkdir host_vars
echo "user: larry" > host_vars/ansible1.example.com
echo "user: marry" > host_vars/ansible2.example.com
tree
vi task6.yaml
ansible-doc user | grep '^='
ansible-doc user | grep EXAMPLES -A3000 | less
vi task6.yaml
ansible-doc shell | grep '^='
ansible-doc shell | grep EXAMPLES -A3000 | less
vi task6.yaml
ansible-playbook --syntax-check task6.yaml 
ansible-playbook task6.yaml 
