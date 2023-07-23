#!/bin/bash

mkdir task3
cd task3/

cp ../task1/inventory .
cp ../task1/ansible.cfg .

cp -pR ../task2/vars .
cp ../task2/task2.yaml task3.yaml
ansible-playbook --syntax-check task3.yaml
ansible-playbook task3.yaml -e "user=tom"
