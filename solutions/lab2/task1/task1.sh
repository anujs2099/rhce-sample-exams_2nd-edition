#!/bin/bash

mkdir task1
cd task1/

cp ../../lab1/task2/inventory .
cp ../../lab1/task2/ansible.cfg .

vi task1.yaml
ansible-doc -t keyword vars 
ansible-doc user | grep '^='
ansible-doc user | grep EXAMPLES -A3000 | less
vi task1.yaml
ansible-doc shell | grep '^='
ansible-doc shell | grep EXAMPLES -A3000 | less
vi task1.yaml
ansible-playbook --syntax-check task1.yaml 
ansible-playbook task1.yaml 
