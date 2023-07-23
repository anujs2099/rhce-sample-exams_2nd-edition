#!/bin/bash

mkdir task3
cd task3/

cp ../../lab1/task2/inventory .
cp ../../lab1/task2/ansible.cfg .

vi task3.yaml
ansible-doc yum | grep EXAMPLES -A3000 | less
ansible-doc service | grep EXAMPLES -A3000 | less
ansible-doc firewalld | grep EXAMPLES -A3000 | less
ansible-doc shell | grep EXAMPLES -A3000 | less
ansible-doc yum_repository | grep EXAMPLES -A3000 | less
ansible-playbook task3.yaml
