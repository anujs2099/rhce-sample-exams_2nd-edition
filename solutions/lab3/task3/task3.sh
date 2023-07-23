#!/bin/bash

mkdir task3
cd task3/

cp ../../lab1/task2/inventory .
cp ../../lab1/task2/ansible.cfg .

vi task3.yaml
ansible-doc yum | grep EXAMPLES -A3000 | less
vi task3.yaml
ansible-doc shell | grep EXAMPLES -A3000 | less
vi task3.yaml
ansible-doc debug | grep EXAMPLES -A3000 | less
vi task3.yaml
ansible-playbook --syntax-check task3.yaml
ansible-playbook task3.yaml

