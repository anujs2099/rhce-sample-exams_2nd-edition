#!/bin/bash
# Go to docs.ansible.com

mkdir task2
cd task2/

cp ../../lab1/task2/inventory .
cp ../../lab1/task2/ansible.cfg .

vi task2.yaml
ansible-doc nmcli | grep EXAMPLES -A3000 | less
ansible-doc hostname | grep EXAMPLES -A3000 | less
ansible-doc firewalld | grep EXAMPLES -A3000 | less
ansible-playbook task2.yaml
ansible ansible2.example.com -m shell -a "nmcli c delete prod1"
ansible ansible2.example.com -m shell -a "nmcli c delete ens224"
ansible-playbook task2.yaml
