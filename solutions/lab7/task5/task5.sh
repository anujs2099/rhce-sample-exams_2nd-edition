#!/bin/bash
# Go to docs.ansible.com

mkdir task5
cd task5/

cp ../../lab1/task2/inventory .
cp ../../lab1/task2/ansible.cfg .

vi task5.yaml 
ansible-playbook task5.yaml
