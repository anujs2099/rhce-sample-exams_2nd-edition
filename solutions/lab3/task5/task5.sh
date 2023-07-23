#!/bin/bash

mkdir task5
cd task5/

cp ../../lab1/task2/inventory .
cp ../../lab1/task2/ansible.cfg .

vi task5.yaml
ansible-doc shell | grep EXAMPLES -A3000 | less
vi task5.yaml
ansible-doc debug | grep EXAMPLES -A3000 | less
vi task5.yaml
ansible-playbook --syntax-check task5.yaml
ansible-playbook task5.yaml

