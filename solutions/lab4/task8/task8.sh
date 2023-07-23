#!/bin/bash

mkdir task8
cd task8/

cp ../../lab1/task2/inventory .
cp ../../lab1/task2/ansible.cfg .

vi task8.yaml
ansible-doc template | grep EXAMPLES -A3000 | less
vi task8.yaml
ansible-doc shell | grep EXAMPLES -A3000 | less
vi task8.yaml
ansible-doc debug | grep EXAMPLES -A3000 | less
vi task8.yaml
ansible-playbook --syntax-check task8.yaml
ansible-playbook task8.yaml

## Using Control Structures in Jinja2 Templates
# Not found easily in ansible documentation
# for & if statements
