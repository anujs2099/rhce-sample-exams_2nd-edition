#!/bin/bash

mkdir task10
cd task10/

cp ../task2/inventory .
cp ../task2/ansible.cfg .

vi task10.yaml
ansible-doc file | grep '^='
ansible-doc file | grep EXAMPLES -A3000 | less
vi task10.yaml
ansible-doc firewalld | grep '^='
ansible-doc firewalld | grep EXAMPLES -A3000 | less
vi task10.yaml
ansible-doc shell | grep '^='
ansible-doc shell | grep EXAMPLES -A3000 | less
vi task10.yaml
ansible-doc debug | grep '^='
ansible-doc debug | grep EXAMPLES -A3000 | less
vi task10.yaml
ansible-playbook --syntax-check task10.yaml
ansible-playbook task10.yaml
# Verification steps done as part of the playbook
