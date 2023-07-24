#!/bin/bash

mkdir task2
cd task2/

cp ../task1/inventory .
cp ../task1/ansible.cfg .

vi task2-2.yaml
ansible-doc -t keyword vars_prompt
ansible-doc user | grep '^='
ansible-doc user | grep EXAMPLES -A3000 | less
ansible-doc shell | grep '^='
ansible-doc shell | grep EXAMPLES -A3000 | less
ansible-doc debug | grep '^='
ansible-doc debug | grep EXAMPLES -A3000 | less
ansible-playbook --syntax-check task2-2.yaml 
ansible-playbook task2-2.yaml 
