#!/bin/bash

mkdir task2
cd task2/

cp ../../lab1/task2/inventory .
cp ../../lab1/task2/ansible.cfg .

vi task2.yaml
ansible-doc yum_repository | grep EXAMPLES -A3000 | less
ansible-doc yum | grep EXAMPLES -A3000 | less
ansible-doc package_facts | grep EXAMPLES -A3000 | less
ansible-playbook task2.yaml
