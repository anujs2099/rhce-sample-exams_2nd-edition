#!/bin/bash

mkdir task5
cd task5/

cp ../../lab1/task2/inventory .
cp ../../lab1/task2/ansible.cfg .

vi file.yaml
ansible-doc file | grep EXAMPLES -A3000 | less
vi file.yaml
ansible-doc shell | grep EXAMPLES -A3000 | less
vi file.yaml
ansible-doc debug | grep EXAMPLES -A3000 | less
vi file.yaml
ansible-playbook --syntax-check file.yaml
ansible-playbook file.yaml

vi copy.yaml
ansible-doc copy | grep EXAMPLES -A3000 | less
vi copy.yaml
ansible-doc blockinfile | grep EXAMPLES -A3000 | less
vi copy.yaml
ansible-doc stat | grep EXAMPLES -A3000 | less
vi copy.yaml
ansible-doc fetch | grep EXAMPLES -A3000 | less
vi copy.yaml
ansible-doc shell | grep EXAMPLES -A3000 | less
vi copy.yaml
ansible-doc debug | grep EXAMPLES -A3000 | less
vi copy.yaml
ansible-playbook --syntax-check copy.yaml
ansible-playbook copy.yaml

## Common File Modules
# lineinfile
# blockinfile
# copy
# fetch
# file
