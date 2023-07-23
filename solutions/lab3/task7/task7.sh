#!/bin/bash

mkdir task7
cd task7/

cp ../../lab1/task2/inventory .
cp ../../lab1/task2/ansible.cfg .

vi task7.yaml
ansible-doc package | grep EXAMPLES -A3000 | less
vi task7.yaml
ansible all -m setup | less
/distri
/mem
vi task7.yaml
ansible-doc shell | grep EXAMPLES -A3000 | less
vi task7.yaml
ansible-doc debug | grep EXAMPLES -A3000 | less
vi task7.yaml
ansible-playbook --syntax-check task7.yaml
ansible-playbook task7.yaml

