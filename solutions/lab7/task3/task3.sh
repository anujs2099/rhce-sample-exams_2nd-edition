#!/bin/bash
# Go to docs.ansible.com

mkdir task3
cd task3/

cp ../../lab1/task2/inventory .
cp ../../lab1/task2/ansible.cfg .

vi task3.yaml
ansible-doc nmcli | grep EXAMPLES -A3000 | less
ansible-playbook task3.yaml
