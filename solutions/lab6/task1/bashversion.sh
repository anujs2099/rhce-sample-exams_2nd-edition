#!/bin/bash

mkdir task1
cd task1/

cp ../../lab1/task2/inventory .
cp ../../lab1/task2/ansible.cfg .

vi bashversion.yaml
ansible-doc package_facts | grep EXAMPLES -A3000 | less
ansible-playbook bashversion.yaml
