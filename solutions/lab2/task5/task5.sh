#!/bin/bash

mkdir task5
cd task5/

cp ../task1/inventory .
cp ../task1/ansible.cfg .

vi inventory
vi task5.yaml
ansible-doc user | grep '^='
ansible-doc user | grep EXAMPLES -A3000 | less
vi task5.yaml
ansible-doc shell | grep '^='
ansible-doc shell | grep EXAMPLES -A3000 | less
vi task5.yaml
ansible-playbook --syntax-check task5.yaml 
ansible-playbook task5.yaml 
