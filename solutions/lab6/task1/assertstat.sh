#!/bin/bash

mkdir task1
cd task1/

cp ../../lab1/task2/inventory .
cp ../../lab1/task2/ansible.cfg .

vi assertstat.yaml
ansible-doc stat | grep EXAMPLES -A3000 | less
ansible-doc assert | grep EXAMPLES -A3000 | less
ansible-playbook assertstat.yaml
